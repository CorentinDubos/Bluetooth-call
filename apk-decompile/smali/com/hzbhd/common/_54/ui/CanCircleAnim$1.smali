.class Lcom/hzbhd/common/_54/ui/CanCircleAnim$1;
.super Ljava/lang/Object;
.source "CanCircleAnim.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/common/_54/ui/CanCircleAnim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/common/_54/ui/CanCircleAnim;


# direct methods
.method constructor <init>(Lcom/hzbhd/common/_54/ui/CanCircleAnim;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/hzbhd/common/_54/ui/CanCircleAnim$1;->this$0:Lcom/hzbhd/common/_54/ui/CanCircleAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 40
    iget-object p1, p0, Lcom/hzbhd/common/_54/ui/CanCircleAnim$1;->this$0:Lcom/hzbhd/common/_54/ui/CanCircleAnim;

    iget-object p1, p1, Lcom/hzbhd/common/_54/ui/CanCircleAnim;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
