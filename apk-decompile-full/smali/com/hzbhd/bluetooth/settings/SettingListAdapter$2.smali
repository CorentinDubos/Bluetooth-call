.class Lcom/hzbhd/bluetooth/settings/SettingListAdapter$2;
.super Ljava/lang/Object;
.source "SettingListAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/settings/SettingListAdapter;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/settings/SettingListAdapter;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter$2;->this$0:Lcom/hzbhd/bluetooth/settings/SettingListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p1, "SettingListAdapter"

    const-string p2, "----view.onTouch()----"

    .line 122
    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter$2;->this$0:Lcom/hzbhd/bluetooth/settings/SettingListAdapter;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->access$100(Lcom/hzbhd/bluetooth/settings/SettingListAdapter;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter$2;->this$0:Lcom/hzbhd/bluetooth/settings/SettingListAdapter;

    invoke-static {p1, p2}, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->access$102(Lcom/hzbhd/bluetooth/settings/SettingListAdapter;Z)Z

    .line 125
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter$2;->this$0:Lcom/hzbhd/bluetooth/settings/SettingListAdapter;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x1

    return p1

    :cond_0
    return p2
.end method
