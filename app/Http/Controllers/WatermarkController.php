<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class WatermarkController extends Controller
{
    /**
     * Handle the incoming request.
     */
    public function __invoke(Request $request)
    {
        $request->validate([
            'fileimage' => 'required|file|mimes:jpg,png',
            'message' => 'required|string|min:10|max:20',
        ]);

        $file = $request->file('fileimage');
        $message = $request->input('message');

        return response()->stream(function () use ($file, $message) {
            $image = imagecreatefromjpeg($file);

            $textColor = imagecolorallocate($image, 255, 255, 255);

            $fontSize = 5;
            $margin = 10;

            $textWidth = imagefontwidth($fontSize) * strlen($message);
            $textHeight = imagefontheight($fontSize);

            $x = imagesx($image) - $textWidth - $margin;
            $y = imagesy($image) - $textHeight - $margin;

            imagestring($image, $fontSize, $x, $y, $message, $textColor);

            header('Content-Type: image/jpeg');

            imagejpeg($image);

            imagedestroy($image);
        }, 200, ['Content-Type' => 'image/jpeg']);
    }
}
