.class Lcom/hzbhd/bluetooth/calllog/CallLogFragment$CustomContentObserver;
.super Landroid/database/ContentObserver;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;


# direct methods
.method public constructor <init>(Lcom/hzbhd/bluetooth/calllog/CallLogFragment;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment$CustomContentObserver;->this$0:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    .line 62
    invoke-static {p1}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->access$000(Lcom/hzbhd/bluetooth/calllog/CallLogFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 66
    iget-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment$CustomContentObserver;->this$0:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->access$102(Lcom/hzbhd/bluetooth/calllog/CallLogFragment;Z)Z

    return-void
.end method
