.class public Lcom/hzbhd/midwareproxy/iPod/AudiobookSpeedStates;
.super Ljava/lang/Object;
.source "AudiobookSpeedStates.java"


# static fields
.field public static final SPEED_FASTER:B = 0x1t

.field public static final SPEED_INVALID:B = -0x2t

.field public static final SPEED_NORMAL:B = 0x0t

.field public static final SPEED_SLOWER:B = -0x1t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getModeName(B)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string p0, "Slower"

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "Normal"

    return-object p0

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string p0, "Faster"

    return-object p0

    :cond_2
    const-string/jumbo p0, "unknown speed"

    return-object p0
.end method

.method public static getNextSpeed(B)B
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p0, v1, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    if-ne p0, v0, :cond_0

    move v0, v1

    :goto_0
    return v0
.end method
