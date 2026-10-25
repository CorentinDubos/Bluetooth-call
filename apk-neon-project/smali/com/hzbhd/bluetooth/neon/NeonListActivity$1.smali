.class Lcom/hzbhd/bluetooth/neon/NeonListActivity$1;
.super Ljava/lang/Object;
.source "NeonListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/neon/NeonListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/neon/NeonListActivity;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/neon/NeonListActivity;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/hzbhd/bluetooth/neon/NeonListActivity$1;->this$0:Lcom/hzbhd/bluetooth/neon/NeonListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/hzbhd/bluetooth/neon/NeonListActivity$1;->this$0:Lcom/hzbhd/bluetooth/neon/NeonListActivity;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/neon/NeonListActivity;->finish()V

    .line 40
    return-void
.end method
