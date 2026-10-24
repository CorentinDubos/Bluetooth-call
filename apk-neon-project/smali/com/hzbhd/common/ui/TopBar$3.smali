.class Lcom/hzbhd/common/ui/TopBar$3;
.super Ljava/lang/Object;
.source "TopBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/common/ui/TopBar;->initLayout(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/common/ui/TopBar;


# direct methods
.method constructor <init>(Lcom/hzbhd/common/ui/TopBar;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/hzbhd/common/ui/TopBar$3;->this$0:Lcom/hzbhd/common/ui/TopBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 276
    iget-object p1, p0, Lcom/hzbhd/common/ui/TopBar$3;->this$0:Lcom/hzbhd/common/ui/TopBar;

    invoke-static {p1}, Lcom/hzbhd/common/ui/TopBar;->access$000(Lcom/hzbhd/common/ui/TopBar;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
