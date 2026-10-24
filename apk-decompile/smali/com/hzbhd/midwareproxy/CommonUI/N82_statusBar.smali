.class public Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;
.super Landroid/widget/LinearLayout;
.source "N82_statusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field ComponentNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field actionNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field anim_ids:[I

.field private dialogSrcList:Lcom/hzbhd/midwareproxy/CommonUI/N82_Dialog;

.field fontSizeBig:I

.field fontSizeSmall:I

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->ComponentNames:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->actionNames:Ljava/util/HashMap;

    const-string v0, ""

    .line 83
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->text:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 146
    sget v1, Lcom/hzbhd/midware/proxy/R$id;->ic_navi:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/hzbhd/midware/proxy/R$id;->ic_radio:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/hzbhd/midware/proxy/R$id;->ic_phone:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/hzbhd/midware/proxy/R$id;->ic_media:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/hzbhd/midware/proxy/R$id;->ic_setting:I

    const/4 v2, 0x4

    aput v1, v0, v2

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->anim_ids:[I

    .line 154
    sget v0, Lcom/hzbhd/midware/proxy/R$dimen;->dp40:I

    iput v0, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->fontSizeSmall:I

    .line 155
    sget v0, Lcom/hzbhd/midware/proxy/R$dimen;->dp43:I

    iput v0, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->fontSizeBig:I

    .line 203
    new-instance v0, Lcom/hzbhd/midwareproxy/CommonUI/N82_Dialog;

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hzbhd/midwareproxy/CommonUI/N82_Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->dialogSrcList:Lcom/hzbhd/midwareproxy/CommonUI/N82_Dialog;

    const-string v0, "AndroidRuntime"

    const-string v1, "==N43_statusBar=="

    .line 74
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->InitData(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->ComponentNames:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->actionNames:Ljava/util/HashMap;

    const-string v0, ""

    .line 83
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->text:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 146
    sget v1, Lcom/hzbhd/midware/proxy/R$id;->ic_navi:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/hzbhd/midware/proxy/R$id;->ic_radio:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Lcom/hzbhd/midware/proxy/R$id;->ic_phone:I

    const/4 v3, 0x2

    aput v1, v0, v3

    sget v1, Lcom/hzbhd/midware/proxy/R$id;->ic_media:I

    const/4 v3, 0x3

    aput v1, v0, v3

    sget v1, Lcom/hzbhd/midware/proxy/R$id;->ic_setting:I

    const/4 v3, 0x4

    aput v1, v0, v3

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->anim_ids:[I

    .line 154
    sget v0, Lcom/hzbhd/midware/proxy/R$dimen;->dp40:I

    iput v0, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->fontSizeSmall:I

    .line 155
    sget v0, Lcom/hzbhd/midware/proxy/R$dimen;->dp43:I

    iput v0, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->fontSizeBig:I

    .line 203
    new-instance v0, Lcom/hzbhd/midwareproxy/CommonUI/N82_Dialog;

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hzbhd/midwareproxy/CommonUI/N82_Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->dialogSrcList:Lcom/hzbhd/midwareproxy/CommonUI/N82_Dialog;

    .line 86
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 88
    invoke-interface {p2, v2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-interface {p2, v2}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "sourceType"

    .line 90
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iput-object v3, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->text:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->InitData(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->ComponentNames:Ljava/util/HashMap;

    .line 27
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->actionNames:Ljava/util/HashMap;

    const-string p1, ""

    .line 83
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->text:Ljava/lang/String;

    const/4 p1, 0x5

    new-array p1, p1, [I

    .line 146
    sget p2, Lcom/hzbhd/midware/proxy/R$id;->ic_navi:I

    const/4 p3, 0x0

    aput p2, p1, p3

    sget p2, Lcom/hzbhd/midware/proxy/R$id;->ic_radio:I

    const/4 p3, 0x1

    aput p2, p1, p3

    sget p2, Lcom/hzbhd/midware/proxy/R$id;->ic_phone:I

    const/4 p3, 0x2

    aput p2, p1, p3

    sget p2, Lcom/hzbhd/midware/proxy/R$id;->ic_media:I

    const/4 p3, 0x3

    aput p2, p1, p3

    sget p2, Lcom/hzbhd/midware/proxy/R$id;->ic_setting:I

    const/4 p3, 0x4

    aput p2, p1, p3

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->anim_ids:[I

    .line 154
    sget p1, Lcom/hzbhd/midware/proxy/R$dimen;->dp40:I

    iput p1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->fontSizeSmall:I

    .line 155
    sget p1, Lcom/hzbhd/midware/proxy/R$dimen;->dp43:I

    iput p1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->fontSizeBig:I

    .line 203
    new-instance p1, Lcom/hzbhd/midwareproxy/CommonUI/N82_Dialog;

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/hzbhd/midwareproxy/CommonUI/N82_Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->dialogSrcList:Lcom/hzbhd/midwareproxy/CommonUI/N82_Dialog;

    return-void
.end method

.method private InitData(Landroid/content/Context;)V
    .locals 7

    const-string v0, "N49-LOG"

    const-string v1, "InitData--in"

    .line 105
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "layout_inflater"

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 107
    sget v0, Lcom/hzbhd/midware/proxy/R$layout;->__82__status_bar:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x0

    move v0, p1

    .line 108
    :goto_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->anim_ids:[I

    array-length v2, v1

    if-ge v0, v2, :cond_7

    .line 109
    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->text:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x45d77c4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    const v4, 0x489454e

    if-eq v3, v4, :cond_1

    const v4, 0x4a21bdb

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "RADIO"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, p1

    goto :goto_1

    :cond_1
    const-string v3, "PHONE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, v6

    goto :goto_1

    :cond_2
    const-string v3, "MEDIA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, v5

    :cond_3
    :goto_1
    if-eqz v2, :cond_6

    if-eq v2, v6, :cond_5

    if-eq v2, v5, :cond_4

    goto :goto_2

    .line 120
    :cond_4
    sget v1, Lcom/hzbhd/midware/proxy/R$id;->ic_media:I

    invoke-virtual {p0, v1}, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->fontSizeBig:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 121
    sget v1, Lcom/hzbhd/midware/proxy/R$id;->ic_media:I

    invoke-virtual {p0, v1}, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setSelected(Z)V

    goto :goto_2

    .line 116
    :cond_5
    sget v1, Lcom/hzbhd/midware/proxy/R$id;->ic_phone:I

    invoke-virtual {p0, v1}, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->fontSizeBig:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 117
    sget v1, Lcom/hzbhd/midware/proxy/R$id;->ic_phone:I

    invoke-virtual {p0, v1}, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setSelected(Z)V

    goto :goto_2

    .line 112
    :cond_6
    sget v1, Lcom/hzbhd/midware/proxy/R$id;->ic_radio:I

    invoke-virtual {p0, v1}, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->fontSizeBig:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 113
    sget v1, Lcom/hzbhd/midware/proxy/R$id;->ic_radio:I

    invoke-virtual {p0, v1}, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setSelected(Z)V

    .line 125
    :goto_2
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->ComponentNames:Ljava/util/HashMap;

    sget v2, Lcom/hzbhd/midware/proxy/R$id;->ic_navi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midware/constant/HzbhdComponentName;->NAVI2:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->ComponentNames:Ljava/util/HashMap;

    sget v2, Lcom/hzbhd/midware/proxy/R$id;->src_list_link:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midware/constant/HzbhdComponentName;->EasyConnectyActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->ComponentNames:Ljava/util/HashMap;

    sget v2, Lcom/hzbhd/midware/proxy/R$id;->ic_phone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.hzbhd.bluetooth"

    const-string v5, "com.hzbhd.bluetooth.hfp.HfpMainActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->ComponentNames:Ljava/util/HashMap;

    sget v2, Lcom/hzbhd/midware/proxy/R$id;->src_list_bt_music:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.hzbhd.bluetooth.a2dp.A2dpMainActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->ComponentNames:Ljava/util/HashMap;

    sget v2, Lcom/hzbhd/midware/proxy/R$id;->ic_setting:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.Settings"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->ComponentNames:Ljava/util/HashMap;

    sget v2, Lcom/hzbhd/midware/proxy/R$id;->src_list_video:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.hzbhd.media"

    const-string v5, "com.hzbhd.media.Video"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->ComponentNames:Ljava/util/HashMap;

    sget v2, Lcom/hzbhd/midware/proxy/R$id;->src_list_music:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.hzbhd.media.Music"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->ComponentNames:Ljava/util/HashMap;

    sget v2, Lcom/hzbhd/midware/proxy/R$id;->src_list_auxin:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.hzbhd.misc"

    const-string v5, "com.hzbhd.misc.auxin.MainActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->dialogSrcList:Lcom/hzbhd/midwareproxy/CommonUI/N82_Dialog;

    invoke-virtual {v1, p0}, Lcom/hzbhd/midwareproxy/CommonUI/N82_Dialog;->setOnclickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private isConfigAtvExist()Ljava/lang/Boolean;
    .locals 2

    .line 52
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->ATV:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedBool(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 53
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 55
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private isConfigDiscExist()Ljava/lang/Boolean;
    .locals 2

    .line 45
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->DISC:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedBool(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 46
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 48
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private isConfigDtvExist()Ljava/lang/Boolean;
    .locals 2

    .line 29
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->DTV:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedBool(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 30
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 32
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private isConfigDvrxist()Ljava/lang/Boolean;
    .locals 2

    .line 66
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->DVR:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedBool(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 67
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 69
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private isConfigLinkExist()Ljava/lang/Boolean;
    .locals 2

    .line 59
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->PHONE_LINK:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedBool(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 60
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 62
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private setSrcExist()V
    .locals 5

    .line 139
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->isConfigDtvExist()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->ComponentNames:Ljava/util/HashMap;

    sget v1, Lcom/hzbhd/midware/proxy/R$id;->src_list_tv:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.hzbhd.misc"

    const-string v4, "com.hzbhd.misc.dtv.DTVMainActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->isConfigDiscExist()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->ComponentNames:Ljava/util/HashMap;

    sget v1, Lcom/hzbhd/midware/proxy/R$id;->src_list_disc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.hzbhd.disc"

    const-string v4, "com.hzbhd.disc.Disc"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_1
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->isConfigDvrxist()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->ComponentNames:Ljava/util/HashMap;

    sget v1, Lcom/hzbhd/midware/proxy/R$id;->src_list_dvr:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.hzbhd.dvr"

    const-string v4, "com.hzbhd.dvr.CameraActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method public SetItemSelected(I)V
    .locals 3

    const/4 p1, 0x0

    move v0, p1

    .line 99
    :goto_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->anim_ids:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 100
    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 161
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 177
    sget v2, Lcom/hzbhd/midware/proxy/R$id;->ic_media:I

    if-ne v1, v2, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->setSrcExist()V

    .line 179
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->dialogSrcList:Lcom/hzbhd/midwareproxy/CommonUI/N82_Dialog;

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/CommonUI/N82_Dialog;->show()V

    goto/16 :goto_0

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->setSrcExist()V

    .line 182
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->dialogSrcList:Lcom/hzbhd/midwareproxy/CommonUI/N82_Dialog;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/CommonUI/N82_Dialog;->hide()V

    .line 183
    sget v2, Lcom/hzbhd/midware/proxy/R$id;->ic_radio:I

    const-string/jumbo v3, "viewId="

    if-ne v1, v2, :cond_1

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "R.id.ic_radio"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.hzbhd.intent.action.fm"

    .line 187
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 190
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ComponentNames.get(v.getId())=========null"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->ComponentNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "ComponentNames.get(v.getId())!=null"

    .line 192
    invoke-static {v1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->ComponentNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 194
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v0, 0x8

    if-eq v0, p1, :cond_0

    const/4 v0, 0x4

    if-ne v0, p1, :cond_1

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N82_statusBar;->dialogSrcList:Lcom/hzbhd/midwareproxy/CommonUI/N82_Dialog;

    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/CommonUI/N82_Dialog;->hide()V

    :cond_1
    return-void
.end method
