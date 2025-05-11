--[[
	This script is part of a GitHub repository:
    https://github.com/pupkin-afk/DiriPackScripts/tree/main
    
	Author: nicell4 (Roblox) / pupkin-afk (GitHub)
	License: MIT — see LICENSE file in the repo
	
	(c) 2025 — Use freely, but respect the license and the author
]]

local tween = {};
tween.__index = tween;

local ts = game:GetService("TweenService");
local T = require(script.T);

type TweenInst = {
	from: (self: TweenInst, obj: Instance, props: T.Props) -> TweenInst;
	to: (self: TweenInst, obj: Instance, props: T.Props) -> TweenInst;
	play: (self: TweenInst) -> TweenInst;
	conclude: (self: TweenInst) -> ();
}

function tween.from(self: TweenInst, obj: Instance, props: T.Props)
	self.preProps[obj] = props;
	return self;
end

function tween.to(self: TweenInst, obj: Instance, props: T.Props)
	local track = ts:Create(obj, TweenInfo.new(self.dur,self.easing,self.dir), props);
	table.insert(self.tracks, track);
	return self;
end

function tween.play(self: TweenInst)
	for obj, props in self.preProps do
		for k, v in props do
			obj[k] = v;
		end
	end
	for _, v in self.tracks do
		v:Play();
	end
	
	return self;
end

function tween.conclude(self: TweenInst)
	self.play(self);
	table.clear(self.tracks);
	self.dur, self.easing, self.dir, self.tracks = nil, nil, nil, nil;
	setmetatable(self, nil);
	table.freeze(self);
end

function tween.new(dur: number?, easing: T.Easing?, dir: T.Dir?): TweenInst
	local mt = {};
	
	mt.dur = dur or .2;
	mt.easing = Enum.EasingStyle[easing or "Circular"];
	mt.dir = Enum.EasingDirection[dir or "Out"];
	mt.tracks = {};
	mt.preProps = {};
	
	setmetatable(mt, tween);
	
	return mt;
end

return tween.new;
