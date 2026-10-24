.class public Lcom/hzbhd/midwareproxy/iPod/ShuffleMode;
.super Ljava/lang/Object;
.source "ShuffleMode.java"


# static fields
.field private static final MODE_MAX_VALUE:B = 0x1t

.field public static final MODE_SHUFFLE_ALBUMS:B = 0x2t

.field public static final MODE_SHUFFLE_OFF:B = 0x0t

.field public static final MODE_SHUFFLE_TRACKS:B = 0x1t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getModeName(B)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "Shuffle Off"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "Shuffle Albums"

    return-object p0

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string p0, "Shuffle tracks"

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public static getNextMode(B)B
    .locals 2

    const/4 v0, 0x0

    if-ltz p0, :cond_2

    const/4 v1, 0x1

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p0, v1

    int-to-byte p0, p0

    if-le p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    :cond_2
    :goto_0
    return v0
.end method
