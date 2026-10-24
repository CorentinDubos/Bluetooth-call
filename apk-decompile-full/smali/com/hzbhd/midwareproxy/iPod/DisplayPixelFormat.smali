.class public Lcom/hzbhd/midwareproxy/iPod/DisplayPixelFormat;
.super Ljava/lang/Object;
.source "DisplayPixelFormat.java"


# static fields
.field public static final FORMAT_MONOCHROME:B = 0x1t

.field public static final FORMAT_RGB565_BE:B = 0x3t

.field public static final FORMAT_RGB565_LE:B = 0x2t

.field private static final TAG:Ljava/lang/String; = "DisplayPixelFormat"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitDepth(B)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/16 v2, 0x10

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "DisplayPixelFormat"

    const-string v0, "Unknown pixel format!"

    .line 42
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    return v2

    :cond_1
    return v0
.end method
