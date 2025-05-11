--[[
	This script is part of a GitHub repository:
    https://github.com/pupkin-afk/DiriPackScripts/tree/main
    
	Author: nicell4 (Roblox) / pupkin-afk (GitHub)
	License: MIT — see LICENSE file in the repo
	
	(c) 2025 — Use freely, but respect the license and the author
]]

export type Easing = "Linear" | "Sine" | "Back" | "Quad" | "Quart" | "Quint" | "Bounce" | "Elastic"
| "Exponential" | "Circular" | "Cubic";

export type Dir = "In" | "Out" | "InOut";

export type Props = {
	BackgroundColor3: Color3?,
	BackgroundTransparency: number?,
	Position: UDim2?,
	Rotation: number?,
	Size: UDim2?,

	ImageColor3: Color3?,
	ImageTransparency: number?,

	TextColor3: Color3?,
	TextTransparency: number?,
	TextStrokeColor3: Color3?,
	TextStrokeTransparency: number?,
	
	CanvasPosition: Vector2?,
	CanvasSize: UDim2?,
	ScrollBarImageColor3: Color3?,
	ScrollBarImageTransparency: number?,
	ScrollBarThickness: number?,
	
	Color: Color3?;
	Offset: Vector2?;
	Thickness: number?;
	CornerRadius: UDim?;
	Transparency: number?;
	Scale: number?;
	Value: string | number | boolean| Color3 | Vector3 | CFrame;
	FieldOfView: number?;
	
	FillTransparency: number?;
	OutlineTransparency: number?;
	FillColor: Color3?;
	OutlineColor: Color3?;
}

return {};
