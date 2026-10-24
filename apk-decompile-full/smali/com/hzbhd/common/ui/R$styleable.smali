.class public final Lcom/hzbhd/common/ui/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/common/ui/R;
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

.field public static final _f9_top_layout_attr:[I

.field public static final _f9_top_layout_attr_f9_selected:I = 0x0

.field public static final img_attr:[I

.field public static final img_attr_click_action:I = 0x0

.field public static final img_attr_is_color_view:I = 0x1

.field public static final img_attr_n:I = 0x2

.field public static final img_attr_p:I = 0x3

.field public static final keyboard:[I

.field public static final keyboard_button:[I

.field public static final keyboard_button_key_char:I = 0x0

.field public static final keyboard_button_key_number:I = 0x1

.field public static final keyboard_keyboard_mode:I = 0x0

.field public static final marquee_text_view:[I

.field public static final marquee_text_view_marquee_width:I = 0x0

.field public static final marquee_text_view_text:I = 0x1

.field public static final marquee_text_view_textColor2:I = 0x2

.field public static final marquee_text_view_textSize:I = 0x3


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x7f040068

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/hzbhd/common/ui/R$styleable;->CommonUI:[I

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/hzbhd/common/ui/R$styleable;->MultiColorStyle:[I

    new-array v1, v0, [I

    const v2, 0x7f04001c

    aput v2, v1, v3

    sput-object v1, Lcom/hzbhd/common/ui/R$styleable;->_f9_top_layout_attr:[I

    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    sput-object v2, Lcom/hzbhd/common/ui/R$styleable;->img_attr:[I

    new-array v0, v0, [I

    const v2, 0x7f040040

    aput v2, v0, v3

    sput-object v0, Lcom/hzbhd/common/ui/R$styleable;->keyboard:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/hzbhd/common/ui/R$styleable;->keyboard_button:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/hzbhd/common/ui/R$styleable;->marquee_text_view:[I

    return-void

    nop

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

    :array_2
    .array-data 4
        0x7f04003e
        0x7f04003f
    .end array-data

    :array_3
    .array-data 4
        0x7f04004b
        0x7f04006f
        0x7f040070
        0x7f040071
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
