.class public Lcom/hzbhd/misc/jni/JniVehicle;
.super Ljava/lang/Object;
.source "JniVehicle.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "JniVehicle"

    .line 7
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native close()V
.end method

.method public static native getConfig([I)I
.end method

.method public static native getData([B)I
.end method

.method public static native on_draw_frame()V
.end method

.method public static native on_surface_changed(II)V
.end method

.method public static native on_surface_created()V
.end method

.method public static native open()Z
.end method
