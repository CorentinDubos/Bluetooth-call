.class public Lcom/hzbhd/midwareproxy/colorview/ColorUtil;
.super Ljava/lang/Object;
.source "ColorUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/colorview/ColorUtil$ColorViewInterface;
    }
.end annotation


# static fields
.field private static final COLOR_A2:I = -0xd6bc78

.field public static final COLOR_TEXT_VIEW_COLOR_N:Ljava/lang/String; = "color_text_view_color_n"

.field public static final COLOR_TEXT_VIEW_COLOR_P:Ljava/lang/String; = "color_text_view_color_p"

.field public static final COLOR_VIEW_COLOR_N:Ljava/lang/String; = "color_view_color_n"

.field public static final COLOR_VIEW_COLOR_P:Ljava/lang/String; = "color_view_color_p"

.field private static final DEFAULT_COLOR:I = -0x1

.field private static final brightness:I = 0x3f

.field private static colorUtil:Lcom/hzbhd/midwareproxy/colorview/ColorUtil;

.field private static final saturation:F

.field private static final saturation2:F


# instance fields
.field private colorViewInterfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hzbhd/midwareproxy/colorview/ColorUtil$ColorViewInterface;",
            ">;"
        }
    .end annotation
.end field

.field private currColor_n:I

.field private currColor_p:I

.field private currTextColor_n:I

.field private currTextColor_p:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->colorViewInterfaces:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->currColor_n:I

    .line 37
    iput v0, p0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->currColor_p:I

    .line 38
    iput v0, p0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->currTextColor_n:I

    const/high16 v0, -0x1000000

    .line 39
    iput v0, p0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->currTextColor_p:I

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/midwareproxy/colorview/ColorUtil;)Landroid/content/Context;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static convertToARGB(I)Ljava/lang/String;
    .locals 6

    .line 183
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 188
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "0"

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 204
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertToRGB(I)Ljava/lang/String;
    .locals 5

    .line 215
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 219
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "0"

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 231
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/hzbhd/midwareproxy/colorview/ColorUtil;
    .locals 1

    .line 47
    sget-object v0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->colorUtil:Lcom/hzbhd/midwareproxy/colorview/ColorUtil;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->colorUtil:Lcom/hzbhd/midwareproxy/colorview/ColorUtil;

    .line 50
    :cond_0
    sget-object v0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->colorUtil:Lcom/hzbhd/midwareproxy/colorview/ColorUtil;

    return-object v0
.end method

.method private viewBackGroundChange(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    const/high16 v0, 0xff0000

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xff00

    and-int/2addr v1, p2

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 p2, p2, 0xff

    .line 81
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->viewBackGroundChange(Landroid/graphics/drawable/Drawable;III)V

    return-void
.end method

.method private viewBackGroundChange(Landroid/graphics/drawable/Drawable;III)V
    .locals 5

    .line 87
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/16 v1, 0x15

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput v4, v1, v2

    const/4 v2, 0x2

    aput v4, v1, v2

    const/4 v2, 0x3

    aput v4, v1, v2

    add-int/lit8 p2, p2, -0x3f

    int-to-float p2, p2

    const/4 v2, 0x4

    aput p2, v1, v2

    const/4 p2, 0x5

    aput v4, v1, p2

    const/4 p2, 0x6

    aput v3, v1, p2

    const/4 p2, 0x7

    aput v4, v1, p2

    const/16 p2, 0x8

    aput v4, v1, p2

    add-int/lit8 p3, p3, -0x3f

    int-to-float p2, p3

    const/16 p3, 0x9

    aput p2, v1, p3

    const/16 p2, 0xa

    aput v4, v1, p2

    const/16 p2, 0xb

    aput v4, v1, p2

    const/16 p2, 0xc

    aput v3, v1, p2

    const/16 p2, 0xd

    aput v4, v1, p2

    add-int/lit8 p4, p4, -0x3f

    int-to-float p2, p4

    const/16 p3, 0xe

    aput p2, v1, p3

    const/16 p2, 0xf

    aput v4, v1, p2

    const/16 p2, 0x10

    aput v4, v1, p2

    const/16 p2, 0x11

    aput v4, v1, p2

    const/16 p2, 0x12

    aput v3, v1, p2

    const/16 p2, 0x13

    aput v4, v1, p2

    const/16 p2, 0x14

    aput v4, v1, p2

    .line 88
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 94
    new-instance p2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 99
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private viewBackGroundChange(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 5

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "viewBackGroundChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sswang"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/16 v1, 0x15

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput v4, v1, v2

    const/4 v2, 0x2

    aput v4, v1, v2

    const/4 v2, 0x3

    aput v4, v1, v2

    add-int/lit8 p3, p3, -0x3f

    int-to-float p3, p3

    const/4 v2, 0x4

    aput p3, v1, v2

    const/4 p3, 0x5

    aput v4, v1, p3

    const/4 p3, 0x6

    aput v3, v1, p3

    const/4 p3, 0x7

    aput v4, v1, p3

    const/16 p3, 0x8

    aput v4, v1, p3

    add-int/lit8 p4, p4, -0x3f

    int-to-float p3, p4

    const/16 p4, 0x9

    aput p3, v1, p4

    const/16 p3, 0xa

    aput v4, v1, p3

    const/16 p3, 0xb

    aput v4, v1, p3

    const/16 p3, 0xc

    aput v3, v1, p3

    const/16 p3, 0xd

    aput v4, v1, p3

    add-int/lit8 p5, p5, -0x3f

    int-to-float p3, p5

    const/16 p4, 0xe

    aput p3, v1, p4

    const/16 p3, 0xf

    aput v4, v1, p3

    const/16 p3, 0x10

    aput v4, v1, p3

    const/16 p3, 0x11

    aput v4, v1, p3

    const/16 p3, 0x12

    aput v3, v1, p3

    const/16 p3, 0x13

    aput v4, v1, p3

    int-to-float p2, p2

    const/16 p3, 0x14

    aput p2, v1, p3

    .line 111
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 117
    new-instance p2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 122
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method


# virtual methods
.method public BackGroundChangeColor(Landroid/graphics/drawable/Drawable;I)V
    .locals 7

    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    shr-int/lit8 v3, v0, 0x18

    const/high16 v0, 0xff0000

    and-int/2addr v0, p2

    shr-int/lit8 v4, v0, 0x10

    const v0, 0xff00

    and-int/2addr v0, p2

    shr-int/lit8 v5, v0, 0x8

    and-int/lit16 v6, p2, 0xff

    move-object v1, p0

    move-object v2, p1

    .line 104
    invoke-direct/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->viewBackGroundChange(Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method

.method public addColorInterface(Lcom/hzbhd/midwareproxy/colorview/ColorUtil$ColorViewInterface;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->colorViewInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->colorViewInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getsaveColor(Landroid/content/Context;)I
    .locals 2

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "color_view_color_n"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 7

    .line 143
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->mContext:Landroid/content/Context;

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_view_color_n"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 145
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "color_view_color_p"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 146
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "color_text_view_color_n"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 147
    iget-object v5, p0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "color_text_view_color_p"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 148
    invoke-virtual {p0, v0, v3, v4, v2}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->setCurrColor(IIII)V

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 150
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/hzbhd/midwareproxy/colorview/ColorUtil$1;

    new-instance v2, Landroid/os/Handler;

    .line 151
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil$1;-><init>(Lcom/hzbhd/midwareproxy/colorview/ColorUtil;Landroid/os/Handler;)V

    const/4 v2, 0x0

    .line 149
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public removeColorInterface(Lcom/hzbhd/midwareproxy/colorview/ColorUtil$ColorViewInterface;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->colorViewInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->colorViewInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public saveColor(Landroid/content/Context;IIII)V
    .locals 2

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_view_color_n"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "color_view_color_p"

    invoke-static {p2, v0, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "color_text_view_color_n"

    invoke-static {p2, p3, p4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "color_text_view_color_p"

    invoke-static {p1, p2, p5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setCurrColor(IIII)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->currColor_n:I

    .line 72
    iput p2, p0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->currColor_p:I

    .line 73
    iput p3, p0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->currTextColor_n:I

    .line 74
    iput p4, p0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->currTextColor_p:I

    const/4 p1, 0x0

    .line 75
    :goto_0
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->colorViewInterfaces:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 76
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->colorViewInterfaces:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hzbhd/midwareproxy/colorview/ColorUtil$ColorViewInterface;

    invoke-interface {p2}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil$ColorViewInterface;->onColorChange()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public textviewStateCahnge(Landroid/widget/TextView;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 136
    iget p2, p0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->currTextColor_p:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 138
    :cond_0
    iget p2, p0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->currTextColor_n:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public viewStateChange(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 128
    invoke-static {}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->getInstance()Lcom/hzbhd/midwareproxy/colorview/ColorUtil;

    move-result-object p2

    iget p2, p2, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->currColor_p:I

    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->viewBackGroundChange(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->getInstance()Lcom/hzbhd/midwareproxy/colorview/ColorUtil;

    move-result-object p2

    iget p2, p2, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->currColor_n:I

    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->viewBackGroundChange(Landroid/graphics/drawable/Drawable;I)V

    :goto_0
    return-void
.end method
