.class public final Lcom/hzbhd/midware/proxy/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/proxy/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CommonUI:[I

.field public static final CommonUI_sourceType:I = 0x0

.field public static final MultiColorStyle:[I

.field public static final MultiColorStyle_color_mode:I = 0x0

.field public static final MultiColorStyle_mcs_n_enable:I = 0x1

.field public static final MultiColorStyle_mcs_p_enable:I = 0x2

.field public static final img_attr:[I

.field public static final img_attr_click_action:I = 0x0

.field public static final img_attr_is_color_view:I = 0x1

.field public static final img_attr_n:I = 0x2

.field public static final img_attr_p:I = 0x3


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f040068

    aput v2, v0, v1

    sput-object v0, Lcom/hzbhd/midware/proxy/R$styleable;->CommonUI:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hzbhd/midware/proxy/R$styleable;->MultiColorStyle:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/hzbhd/midware/proxy/R$styleable;->img_attr:[I

    return-void

    :array_0
    .array-data 4
        0x7f04000e
        0x7f04004c
        0x7f04004d
    .end array-data

    :array_1
    .array-data 4
        0x7f04000d
        0x7f040037
        0x7f040050
        0x7f040052
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
