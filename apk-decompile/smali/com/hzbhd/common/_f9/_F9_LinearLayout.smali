.class public Lcom/hzbhd/common/_f9/_F9_LinearLayout;
.super Landroid/widget/LinearLayout;
.source "_F9_LinearLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private __f9__bluetooth:Landroid/widget/ImageView;

.field private __f9__music:Landroid/widget/ImageView;

.field private __f9__navi:Landroid/widget/ImageView;

.field private __f9__radio:Landroid/widget/ImageView;

.field private __f9__video:Landroid/widget/ImageView;

.field private imageViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private imageViewsN:[I

.field private imageViewsP:[I

.field private mContext:Landroid/content/Context;

.field private selected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/common/_f9/_F9_LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/common/_f9/_F9_LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x5

    new-array v0, p3, [I

    .line 24
    sget v1, Lcom/hzbhd/common/ui/R$drawable;->__f9__icon_radio_normal:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/hzbhd/common/ui/R$drawable;->__f9__icon_bluetooth_normal:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Lcom/hzbhd/common/ui/R$drawable;->__f9__icon_music_normal:I

    const/4 v4, 0x2

    aput v1, v0, v4

    sget v1, Lcom/hzbhd/common/ui/R$drawable;->__f9__icon_video_normal:I

    const/4 v5, 0x3

    aput v1, v0, v5

    sget v1, Lcom/hzbhd/common/ui/R$drawable;->__f9__icon_nav_normal:I

    const/4 v6, 0x4

    aput v1, v0, v6

    iput-object v0, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->imageViewsN:[I

    new-array p3, p3, [I

    .line 25
    sget v0, Lcom/hzbhd/common/ui/R$drawable;->__f9__icon_radio_select:I

    aput v0, p3, v2

    sget v0, Lcom/hzbhd/common/ui/R$drawable;->__f9__icon_bluetooth_select:I

    aput v0, p3, v3

    sget v0, Lcom/hzbhd/common/ui/R$drawable;->__f9__icon_music_select:I

    aput v0, p3, v4

    sget v0, Lcom/hzbhd/common/ui/R$drawable;->__f9__icon_video_select:I

    aput v0, p3, v5

    sget v0, Lcom/hzbhd/common/ui/R$drawable;->__f9__icon_nav_select:I

    aput v0, p3, v6

    iput-object p3, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->imageViewsP:[I

    .line 26
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->imageViews:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->mContext:Landroid/content/Context;

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/hzbhd/common/ui/R$layout;->__f9__top_layout:I

    invoke-virtual {p3, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    sget-object p3, Lcom/hzbhd/common/ui/R$styleable;->_f9_top_layout_attr:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 41
    sget p2, Lcom/hzbhd/common/ui/R$styleable;->_f9_top_layout_attr_f9_selected:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->selected:I

    .line 42
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private startActivity(Landroid/content/ComponentName;)V
    .locals 1

    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 93
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 94
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    iget-object p1, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/hzbhd/common/ui/R$string;->app_not_installed:I

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/ToastUtls;->showLongText(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 78
    sget v0, Lcom/hzbhd/common/ui/R$id;->__f9__radio:I

    if-ne p1, v0, :cond_0

    .line 79
    sget-object p1, Lcom/hzbhd/midware/constant/HzbhdComponentName;->RadioActivity:Landroid/content/ComponentName;

    invoke-direct {p0, p1}, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->startActivity(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 80
    :cond_0
    sget v0, Lcom/hzbhd/common/ui/R$id;->__f9__bluetooth:I

    if-ne p1, v0, :cond_1

    .line 81
    sget-object p1, Lcom/hzbhd/midware/constant/HzbhdComponentName;->BlueTeethActivity:Landroid/content/ComponentName;

    invoke-direct {p0, p1}, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->startActivity(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 82
    :cond_1
    sget v0, Lcom/hzbhd/common/ui/R$id;->__f9__music:I

    if-ne p1, v0, :cond_2

    .line 83
    sget-object p1, Lcom/hzbhd/midware/constant/HzbhdComponentName;->MediaMusic:Landroid/content/ComponentName;

    invoke-direct {p0, p1}, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->startActivity(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 84
    :cond_2
    sget v0, Lcom/hzbhd/common/ui/R$id;->__f9__video:I

    if-ne p1, v0, :cond_3

    .line 85
    sget-object p1, Lcom/hzbhd/midware/constant/HzbhdComponentName;->MediaVideo:Landroid/content/ComponentName;

    invoke-direct {p0, p1}, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->startActivity(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 86
    :cond_3
    sget v0, Lcom/hzbhd/common/ui/R$id;->__f9__navi:I

    if-ne p1, v0, :cond_4

    .line 87
    sget-object p1, Lcom/hzbhd/midware/constant/HzbhdComponentName;->NAVI2:Landroid/content/ComponentName;

    invoke-direct {p0, p1}, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->startActivity(Landroid/content/ComponentName;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 47
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 48
    sget v0, Lcom/hzbhd/common/ui/R$id;->__f9__radio:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->__f9__radio:Landroid/widget/ImageView;

    .line 49
    sget v0, Lcom/hzbhd/common/ui/R$id;->__f9__bluetooth:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->__f9__bluetooth:Landroid/widget/ImageView;

    .line 50
    sget v0, Lcom/hzbhd/common/ui/R$id;->__f9__music:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->__f9__music:Landroid/widget/ImageView;

    .line 51
    sget v0, Lcom/hzbhd/common/ui/R$id;->__f9__video:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->__f9__video:Landroid/widget/ImageView;

    .line 52
    sget v0, Lcom/hzbhd/common/ui/R$id;->__f9__navi:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->__f9__navi:Landroid/widget/ImageView;

    .line 54
    iget-object v0, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->__f9__radio:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->__f9__bluetooth:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->__f9__music:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->__f9__video:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->__f9__navi:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->imageViews:Ljava/util/List;

    iget-object v1, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->__f9__radio:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->imageViews:Ljava/util/List;

    iget-object v1, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->__f9__bluetooth:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->imageViews:Ljava/util/List;

    iget-object v1, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->__f9__music:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->imageViews:Ljava/util/List;

    iget-object v1, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->__f9__video:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->imageViews:Ljava/util/List;

    iget-object v1, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->__f9__navi:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 66
    :goto_0
    iget-object v1, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->imageViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 67
    iget v1, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->selected:I

    if-ne v0, v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->imageViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->imageViewsP:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->imageViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/hzbhd/common/_f9/_F9_LinearLayout;->imageViewsN:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
