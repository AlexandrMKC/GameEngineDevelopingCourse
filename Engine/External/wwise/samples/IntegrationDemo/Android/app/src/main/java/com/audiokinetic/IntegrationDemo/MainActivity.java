package com.audiokinetic.IntegrationDemo;

import android.util.Log;

import org.libsdl.app.SDLActivity;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class MainActivity extends SDLActivity
{
    private static final String TAG = "MainActivity";

    @Override protected String[] getLibraries() {
        return new String[] {
                "IntegrationDemo" // SDL2 is linked statically into this library
        };
    }

    // The Wwise GME plug-in for Android requires setting the application context
    @Override protected void onCreate(android.os.Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        try {
            Class<?> GMESDKclass = Class.forName("com.gme.GME.GMESDK");
            Method m = GMESDKclass.getMethod("setApplicationContext", android.content.Context.class);
            m.invoke(null, this);

        } catch(ClassNotFoundException e) {
            Log.i(TAG, "GME package is not found. Install the Wwise GME plug-in to try out the GME demos.");
        } catch(NoSuchMethodException e) {
            Log.e(TAG, "NoSuchMethodException : " + e.getMessage());
        } catch(IllegalAccessException e) {
            Log.e(TAG,"IllegalAccessException : " + e.getMessage());
        } catch(InvocationTargetException e) {
            Log.e(TAG,"InvocationTargetException : " + e.getMessage());
        }

    }
}
