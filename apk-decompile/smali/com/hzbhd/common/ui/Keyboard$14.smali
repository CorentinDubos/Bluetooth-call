.class Lcom/hzbhd/common/ui/Keyboard$14;
.super Ljava/lang/Object;
.source "Keyboard.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/common/ui/Keyboard;->initLayout(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/common/ui/Keyboard;


# direct methods
.method constructor <init>(Lcom/hzbhd/common/ui/Keyboard;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/hzbhd/common/ui/Keyboard$14;->this$0:Lcom/hzbhd/common/ui/Keyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 231
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard$14;->this$0:Lcom/hzbhd/common/ui/Keyboard;

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/hzbhd/common/ui/Keyboard;->access$100(Lcom/hzbhd/common/ui/Keyboard;I)Z

    move-result p1

    return p1
.end method
