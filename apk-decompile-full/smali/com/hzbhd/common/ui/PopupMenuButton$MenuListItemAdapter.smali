.class public Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "PopupMenuButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/common/ui/PopupMenuButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuListItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/hzbhd/common/ui/PopupMenuButton;


# direct methods
.method public constructor <init>(Lcom/hzbhd/common/ui/PopupMenuButton;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->this$0:Lcom/hzbhd/common/ui/PopupMenuButton;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 484
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$500(Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 483
    iget-object p0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->mItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getindex(I)I
    .locals 2

    const/4 v0, 0x0

    .line 498
    :goto_0
    iget-object v1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 499
    iget-object v1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;

    iget v1, v1, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuId:I

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public addItem(Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;)V
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 558
    iget-object p2, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->this$0:Lcom/hzbhd/common/ui/PopupMenuButton;

    invoke-static {p2}, Lcom/hzbhd/common/ui/PopupMenuButton;->access$300(Lcom/hzbhd/common/ui/PopupMenuButton;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/hzbhd/common/ui/R$attr;->menu_list_item_layout:I

    invoke-static {p3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 559
    new-instance p3, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter$ViewHolder;

    invoke-direct {p3, p0, v0}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter$ViewHolder;-><init>(Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;Lcom/hzbhd/common/ui/PopupMenuButton$1;)V

    .line 560
    sget v0, Lcom/hzbhd/common/ui/R$id;->iv_menu_list_item_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter$ViewHolder;->mIconIv:Landroid/widget/ImageView;

    .line 561
    sget v0, Lcom/hzbhd/common/ui/R$id;->tv_menu_list_item_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter$ViewHolder;->mNameTv:Landroid/widget/TextView;

    .line 562
    sget v0, Lcom/hzbhd/common/ui/R$id;->ib_menu_list_item_switch:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p3, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter$ViewHolder;->mSwitchIb:Landroid/widget/ImageButton;

    .line 563
    sget v0, Lcom/hzbhd/common/ui/R$id;->tv_menu_list_item_info:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter$ViewHolder;->mInfoTv:Landroid/widget/TextView;

    .line 564
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 567
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter$ViewHolder;

    .line 569
    :goto_0
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;

    iget v0, v0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 571
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    .line 573
    :cond_1
    iget-object v0, p3, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter$ViewHolder;->mIconIv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;

    iget v1, v1, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 574
    iget-object v0, p3, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter$ViewHolder;->mNameTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;

    iget-object v1, v1, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    iget-object v0, p3, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter$ViewHolder;->mNameTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 577
    iget-object v1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;

    iget-boolean v1, v1, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mHasSwitch:Z

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 578
    iget-object v1, p3, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter$ViewHolder;->mSwitchIb:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 579
    iget-object v1, p3, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter$ViewHolder;->mInfoTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 581
    sget v1, Lcom/hzbhd/common/ui/R$id;->ib_menu_list_item_switch:I

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 582
    iget-object v1, p3, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter$ViewHolder;->mNameTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;

    iget-boolean v0, v0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mSwitchOnOff:Z

    if-eqz v0, :cond_2

    .line 585
    iget-object v0, p3, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter$ViewHolder;->mSwitchIb:Landroid/widget/ImageButton;

    sget v1, Lcom/hzbhd/common/ui/R$drawable;->ic_switch_frame_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 587
    :cond_2
    iget-object v0, p3, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter$ViewHolder;->mSwitchIb:Landroid/widget/ImageButton;

    sget v1, Lcom/hzbhd/common/ui/R$drawable;->ic_switch_frame_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 590
    :goto_1
    iget-object v0, p3, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter$ViewHolder;->mSwitchIb:Landroid/widget/ImageButton;

    new-instance v1, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter$1;-><init>(Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;ILcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter$ViewHolder;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 612
    :cond_3
    iget-object v1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;

    iget-boolean v1, v1, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mHasInfo:Z

    if-eqz v1, :cond_4

    .line 613
    iget-object v1, p3, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter$ViewHolder;->mInfoTv:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 614
    iget-object v1, p3, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter$ViewHolder;->mSwitchIb:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 615
    iget-object v1, p3, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter$ViewHolder;->mInfoTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;

    iget-object p1, p1, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mInfo:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    sget p1, Lcom/hzbhd/common/ui/R$id;->tv_menu_list_item_info:I

    invoke-virtual {v0, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 618
    iget-object p1, p3, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter$ViewHolder;->mNameTv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 620
    :cond_4
    iget-object p1, p3, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter$ViewHolder;->mSwitchIb:Landroid/widget/ImageButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 621
    iget-object p1, p3, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter$ViewHolder;->mInfoTv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-object p2
.end method

.method public reset()V
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public updateItemInfo(ILjava/lang/String;)V
    .locals 1

    if-ltz p1, :cond_1

    .line 525
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;

    if-eqz p1, :cond_1

    .line 531
    iget-boolean v0, p1, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mHasInfo:Z

    if-eqz v0, :cond_1

    .line 532
    iput-object p2, p1, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mInfo:Ljava/lang/String;

    .line 533
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateSwitchOnOff(IZ)V
    .locals 1

    if-ltz p1, :cond_1

    .line 512
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;

    if-eqz p1, :cond_1

    .line 518
    iget-boolean v0, p1, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mHasSwitch:Z

    if-eqz v0, :cond_1

    .line 519
    iput-boolean p2, p1, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mSwitchOnOff:Z

    .line 520
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateSwitchOnOffbyId(IZ)V
    .locals 0

    .line 507
    invoke-direct {p0, p1}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->getindex(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;->updateSwitchOnOff(IZ)V

    return-void
.end method
