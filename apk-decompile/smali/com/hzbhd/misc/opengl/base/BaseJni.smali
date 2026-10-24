.class public Lcom/hzbhd/misc/opengl/base/BaseJni;
.super Ljava/lang/Object;
.source "BaseJni.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized close()V
    .locals 2

    const-class v0, Lcom/hzbhd/misc/opengl/base/BaseJni;

    monitor-enter v0

    .line 21
    :try_start_0
    invoke-static {}, Lcom/hzbhd/misc/jni/JniVehicle;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getConfig([I)I
    .locals 1

    const-class v0, Lcom/hzbhd/misc/opengl/base/BaseJni;

    monitor-enter v0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    .line 39
    monitor-exit v0

    return p0

    .line 40
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/hzbhd/misc/jni/JniVehicle;->getConfig([I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getData([B)I
    .locals 1

    const-class v0, Lcom/hzbhd/misc/opengl/base/BaseJni;

    monitor-enter v0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    .line 52
    monitor-exit v0

    return p0

    .line 53
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/hzbhd/misc/jni/JniVehicle;->getData([B)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized on_draw_frame()V
    .locals 2

    const-class v0, Lcom/hzbhd/misc/opengl/base/BaseJni;

    monitor-enter v0

    .line 76
    :try_start_0
    invoke-static {}, Lcom/hzbhd/misc/jni/JniVehicle;->on_draw_frame()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized on_surface_changed(II)V
    .locals 1

    const-class v0, Lcom/hzbhd/misc/opengl/base/BaseJni;

    monitor-enter v0

    .line 69
    :try_start_0
    invoke-static {p0, p1}, Lcom/hzbhd/misc/jni/JniVehicle;->on_surface_changed(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized on_surface_created()V
    .locals 2

    const-class v0, Lcom/hzbhd/misc/opengl/base/BaseJni;

    monitor-enter v0

    .line 60
    :try_start_0
    invoke-static {}, Lcom/hzbhd/misc/jni/JniVehicle;->on_surface_created()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized open()Z
    .locals 2

    const-class v0, Lcom/hzbhd/misc/opengl/base/BaseJni;

    monitor-enter v0

    .line 14
    :try_start_0
    invoke-static {}, Lcom/hzbhd/misc/jni/JniVehicle;->open()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
