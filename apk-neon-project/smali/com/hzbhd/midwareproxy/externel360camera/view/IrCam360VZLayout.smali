.class public Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;
.super Landroid/widget/LinearLayout;
.source "IrCam360VZLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field showKeyBoard:Z

.field view:Landroid/view/View;

.field private views:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p2, 0x1b

    new-array p2, p2, [I

    .line 19
    sget p3, Lcom/hzbhd/midware/proxy/R$id;->vz_irkey_button:I

    const/4 p4, 0x0

    aput p3, p2, p4

    sget p3, Lcom/hzbhd/midware/proxy/R$id;->vz_irkey_button_keybroad:I

    const/4 v0, 0x1

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_1:I

    const/4 v0, 0x2

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_2:I

    const/4 v0, 0x3

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_3:I

    const/4 v0, 0x4

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_4:I

    const/4 v0, 0x5

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_5:I

    const/4 v0, 0x6

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_6:I

    const/4 v0, 0x7

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_7:I

    const/16 v0, 0x8

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_8:I

    const/16 v0, 0x9

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_9:I

    const/16 v0, 0xa

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_0:I

    const/16 v0, 0xb

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_add:I

    const/16 v0, 0xc

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_minusr:I

    const/16 v0, 0xd

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_left:I

    const/16 v0, 0xe

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_right:I

    const/16 v0, 0xf

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_up:I

    const/16 v0, 0x10

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_down:I

    const/16 v0, 0x11

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_ok:I

    const/16 v0, 0x12

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_back:I

    const/16 v0, 0x13

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_login:I

    const/16 v0, 0x14

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_info:I

    const/16 v0, 0x15

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_prev:I

    const/16 v0, 0x16

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_playpause:I

    const/16 v0, 0x17

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_next:I

    const/16 v0, 0x18

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_stop:I

    const/16 v0, 0x19

    aput p3, p2, v0

    sget p3, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_keybroad:I

    const/16 v0, 0x1a

    aput p3, p2, v0

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->views:[I

    .line 49
    iput-boolean p4, p0, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->showKeyBoard:Z

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/hzbhd/midware/proxy/R$layout;->vz_ir_key_rl:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->view:Landroid/view/View;

    .line 67
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->addView(Landroid/view/View;)V

    move p1, p4

    .line 68
    :goto_0
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->views:[I

    array-length p3, p2

    if-ge p1, p3, :cond_0

    .line 69
    iget-object p3, p0, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->view:Landroid/view/View;

    aget p2, p2, p1

    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->hideKeyBoard()V

    .line 72
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->show_vz_irkey_button()V

    .line 73
    iput-boolean p4, p0, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->showKeyBoard:Z

    return-void
.end method

.method public static addVIew(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 82
    invoke-static {}, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->isVZ360Camera()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 86
    invoke-virtual {v0, p0}, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p0, 0x50

    .line 87
    invoke-virtual {v0, p0}, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->setGravity(I)V

    .line 88
    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private isTouchPointInView(Landroid/view/View;II)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 139
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 140
    aget v2, v1, v0

    const/4 v3, 0x1

    .line 141
    aget v1, v1, v3

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, v1

    if-lt p3, v1, :cond_1

    if-gt p3, p1, :cond_1

    if-lt p2, v2, :cond_1

    if-gt p2, v4, :cond_1

    return v3

    :cond_1
    return v0
.end method

.method private setVisual(Landroid/view/View;I)V
    .locals 0

    .line 114
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    .line 96
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->view:Landroid/view/View;

    sget v3, Lcom/hzbhd/midware/proxy/R$id;->vz_irkey_button_keybroad:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->isTouchPointInView(Landroid/view/View;II)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->view:Landroid/view/View;

    sget v3, Lcom/hzbhd/midware/proxy/R$id;->bottom_control:I

    .line 97
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->isTouchPointInView(Landroid/view/View;II)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->view:Landroid/view/View;

    sget v3, Lcom/hzbhd/midware/proxy/R$id;->left_control:I

    .line 98
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->isTouchPointInView(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->is_visible_vz_irkey_button()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->hideKeyBoard()V

    .line 104
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->hide_vz_irkey_button()V

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->showKeyBoard()V

    .line 107
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->show_vz_irkey_button()V

    .line 110
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public hideKeyBoard()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->view:Landroid/view/View;

    sget v1, Lcom/hzbhd/midware/proxy/R$id;->vz_irkey_button_keybroad:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->setVisual(Landroid/view/View;I)V

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->showKeyBoard:Z

    return-void
.end method

.method public hide_vz_irkey_button()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->view:Landroid/view/View;

    sget v1, Lcom/hzbhd/midware/proxy/R$id;->vz_irkey_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->setVisual(Landroid/view/View;I)V

    return-void
.end method

.method public is_visible_vz_irkey_button()Z
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->view:Landroid/view/View;

    sget v1, Lcom/hzbhd/midware/proxy/R$id;->vz_irkey_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 155
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->vz_irkey_button:I

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 156
    :cond_0
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->vz_irkey_button_keybroad:I

    if-ne p1, v0, :cond_1

    goto/16 :goto_0

    .line 157
    :cond_1
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_1:I

    if-ne p1, v0, :cond_2

    .line 158
    sget p1, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->comds_1:I

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->sendMDs(I)V

    goto/16 :goto_0

    .line 159
    :cond_2
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_2:I

    if-ne p1, v0, :cond_3

    .line 160
    sget p1, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->comds_2:I

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->sendMDs(I)V

    goto/16 :goto_0

    .line 161
    :cond_3
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_3:I

    if-ne p1, v0, :cond_4

    .line 162
    sget p1, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->comds_3:I

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->sendMDs(I)V

    goto/16 :goto_0

    .line 163
    :cond_4
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_4:I

    if-ne p1, v0, :cond_5

    .line 164
    sget p1, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->comds_4:I

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->sendMDs(I)V

    goto/16 :goto_0

    .line 165
    :cond_5
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_5:I

    if-ne p1, v0, :cond_6

    .line 166
    sget p1, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->comds_5:I

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->sendMDs(I)V

    goto/16 :goto_0

    .line 167
    :cond_6
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_6:I

    if-ne p1, v0, :cond_7

    .line 168
    sget p1, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->comds_6:I

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->sendMDs(I)V

    goto/16 :goto_0

    .line 169
    :cond_7
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_7:I

    if-ne p1, v0, :cond_8

    .line 170
    sget p1, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->comds_7:I

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->sendMDs(I)V

    goto/16 :goto_0

    .line 171
    :cond_8
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_8:I

    if-ne p1, v0, :cond_9

    .line 172
    sget p1, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->comds_8:I

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->sendMDs(I)V

    goto/16 :goto_0

    .line 173
    :cond_9
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_9:I

    if-ne p1, v0, :cond_a

    .line 174
    sget p1, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->comds_9:I

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->sendMDs(I)V

    goto/16 :goto_0

    .line 175
    :cond_a
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_0:I

    if-ne p1, v0, :cond_b

    .line 176
    sget p1, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->comds_0:I

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->sendMDs(I)V

    goto/16 :goto_0

    .line 177
    :cond_b
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_add:I

    if-ne p1, v0, :cond_c

    .line 178
    sget p1, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->comds_add:I

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->sendMDs(I)V

    goto/16 :goto_0

    .line 179
    :cond_c
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_minusr:I

    if-ne p1, v0, :cond_d

    .line 180
    sget p1, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->comds_minus:I

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->sendMDs(I)V

    goto/16 :goto_0

    .line 181
    :cond_d
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_left:I

    if-ne p1, v0, :cond_e

    .line 182
    sget p1, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->LEFT:I

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->sendMDs(I)V

    goto/16 :goto_0

    .line 183
    :cond_e
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_right:I

    if-ne p1, v0, :cond_f

    .line 184
    sget p1, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->RIGHT:I

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->sendMDs(I)V

    goto/16 :goto_0

    .line 185
    :cond_f
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_up:I

    if-ne p1, v0, :cond_10

    .line 186
    sget p1, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->UP:I

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->sendMDs(I)V

    goto/16 :goto_0

    .line 187
    :cond_10
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_down:I

    if-ne p1, v0, :cond_11

    .line 188
    sget p1, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->DOWN:I

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->sendMDs(I)V

    goto/16 :goto_0

    .line 189
    :cond_11
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_ok:I

    if-ne p1, v0, :cond_12

    .line 190
    sget p1, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->ENTER:I

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->sendMDs(I)V

    goto :goto_0

    .line 191
    :cond_12
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_back:I

    if-ne p1, v0, :cond_13

    .line 192
    sget p1, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->RETURN:I

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->sendMDs(I)V

    goto :goto_0

    .line 193
    :cond_13
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_login:I

    if-ne p1, v0, :cond_14

    .line 194
    sget p1, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->LOGIN:I

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->sendMDs(I)V

    goto :goto_0

    .line 195
    :cond_14
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_info:I

    if-ne p1, v0, :cond_15

    .line 196
    sget p1, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->INFO:I

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->sendMDs(I)V

    goto :goto_0

    .line 197
    :cond_15
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_prev:I

    if-ne p1, v0, :cond_16

    .line 198
    sget p1, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->PREV:I

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->sendMDs(I)V

    goto :goto_0

    .line 199
    :cond_16
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_playpause:I

    if-ne p1, v0, :cond_17

    .line 200
    sget p1, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->PLAY:I

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->sendMDs(I)V

    goto :goto_0

    .line 201
    :cond_17
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_next:I

    if-ne p1, v0, :cond_18

    .line 202
    sget p1, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->NEXT:I

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->sendMDs(I)V

    goto :goto_0

    .line 203
    :cond_18
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_stop:I

    if-ne p1, v0, :cond_19

    .line 204
    sget p1, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->STOP:I

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->sendMDs(I)V

    goto :goto_0

    .line 205
    :cond_19
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->id_selector_bottom_vz_keybroad:I

    if-ne p1, v0, :cond_1b

    .line 206
    iget-boolean p1, p0, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->showKeyBoard:Z

    if-nez p1, :cond_1a

    const/4 p1, 0x1

    .line 207
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->showKeyBoard:Z

    .line 208
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->showKeyBoard()V

    goto :goto_0

    :cond_1a
    const/4 p1, 0x0

    .line 210
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->showKeyBoard:Z

    .line 211
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->hideKeyBoard()V

    :cond_1b
    :goto_0
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public showKeyBoard()V
    .locals 2

    .line 117
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->showKeyBoard:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->view:Landroid/view/View;

    sget v1, Lcom/hzbhd/midware/proxy/R$id;->vz_irkey_button_keybroad:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->setVisual(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public show_vz_irkey_button()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->view:Landroid/view/View;

    sget v1, Lcom/hzbhd/midware/proxy/R$id;->vz_irkey_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hzbhd/midwareproxy/externel360camera/view/IrCam360VZLayout;->setVisual(Landroid/view/View;I)V

    return-void
.end method
