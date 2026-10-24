.class Lcom/hzbhd/common/ui/TopBar$2;
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

    .line 236
    iput-object p1, p0, Lcom/hzbhd/common/ui/TopBar$2;->this$0:Lcom/hzbhd/common/ui/TopBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 239
    iget-object p1, p0, Lcom/hzbhd/common/ui/TopBar$2;->this$0:Lcom/hzbhd/common/ui/TopBar;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/TopBar;->goHome()V

    return-void
.end method
