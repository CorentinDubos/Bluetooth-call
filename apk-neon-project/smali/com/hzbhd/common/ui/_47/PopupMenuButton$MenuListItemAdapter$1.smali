.class Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter$1;
.super Ljava/lang/Object;
.source "PopupMenuButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter;

.field final synthetic val$cPosition:I

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$viewHolder:Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter;ILcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter$1;->this$1:Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter;

    iput p2, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter$1;->val$cPosition:I

    iput-object p3, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter$1;->val$viewHolder:Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter$ViewHolder;

    iput-object p4, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 600
    iget-object p1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter$1;->this$1:Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter;

    iget-object p1, p1, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter;->this$0:Lcom/hzbhd/common/ui/_47/PopupMenuButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/_47/PopupMenuButton;->resetTimeout()V

    .line 602
    iget-object p1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter$1;->this$1:Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter;

    invoke-static {p1}, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter;->access$500(Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget v0, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter$1;->val$cPosition:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;

    iget-boolean p1, p1, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mSwitchOnOff:Z

    if-eqz p1, :cond_0

    .line 603
    iget-object p1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter$1;->val$viewHolder:Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter$ViewHolder;

    iget-object p1, p1, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter$ViewHolder;->mSwitchIb:Landroid/widget/ImageButton;

    sget v0, Lcom/hzbhd/common/ui/R$drawable;->frame_anim_switch_on:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 604
    iget-object p1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter$1;->val$viewHolder:Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter$ViewHolder;

    iget-object p1, p1, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter$ViewHolder;->mSwitchIb:Landroid/widget/ImageButton;

    .line 605
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 606
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    const/4 p1, 0x0

    goto :goto_0

    .line 609
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter$1;->val$viewHolder:Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter$ViewHolder;

    iget-object p1, p1, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter$ViewHolder;->mSwitchIb:Landroid/widget/ImageButton;

    sget v0, Lcom/hzbhd/common/ui/R$drawable;->frame_anim_switch_off:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 610
    iget-object p1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter$1;->val$viewHolder:Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter$ViewHolder;

    iget-object p1, p1, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter$ViewHolder;->mSwitchIb:Landroid/widget/ImageButton;

    .line 611
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 612
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    const/4 p1, 0x1

    .line 615
    :goto_0
    iget-object v0, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter$1;->this$1:Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter;

    iget-object v0, v0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter;->this$0:Lcom/hzbhd/common/ui/_47/PopupMenuButton;

    iget v1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter$1;->val$cPosition:I

    invoke-virtual {v0, v1, p1}, Lcom/hzbhd/common/ui/_47/PopupMenuButton;->updateSwitchOff(IZ)V

    .line 616
    iget-object v0, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter$1;->this$1:Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter;

    iget-object v0, v0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter;->this$0:Lcom/hzbhd/common/ui/_47/PopupMenuButton;

    iget v1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter$1;->val$cPosition:I

    iget-object v2, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItemAdapter$1;->val$view:Landroid/view/View;

    invoke-static {v0, v1, p1, v2}, Lcom/hzbhd/common/ui/_47/PopupMenuButton;->access$600(Lcom/hzbhd/common/ui/_47/PopupMenuButton;IZLandroid/view/View;)V

    return-void
.end method
