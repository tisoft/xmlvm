package org.xmlvm.iphone.gl;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

public class BufferUtils {

    public static ByteBuffer createByteBuffer(int size) {
        return org.lwjgl.BufferUtils.createByteBuffer(size);
    }

    public static IntBuffer createIntBuffer(int size) {
        return org.lwjgl.BufferUtils.createIntBuffer(size);
    }

    public static FloatBuffer createFloatBuffer(int size) {
        return org.lwjgl.BufferUtils.createFloatBuffer(size);
    }
}
