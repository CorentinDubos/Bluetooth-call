.class Lcom/hzbhd/bluetooth/calllog/CallLogFragment$DeleteCallHistoryTask;
.super Landroid/os/AsyncTask;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeleteCallHistoryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/calllog/CallLogFragment;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment$DeleteCallHistoryTask;->this$0:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 536
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment$DeleteCallHistoryTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------DeleteCallHistoryTask.doInBackground(), address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CallLogFragment"

    invoke-static {v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment$DeleteCallHistoryTask;->this$0:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->deleteCallLogData(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 543
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 550
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string p1, "CallLogFragment"

    const-string v0, "------DeleteCallHistoryTask.onPostExecute()--------"

    .line 551
    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment$DeleteCallHistoryTask;->this$0:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->startAllCallsQuery()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 557
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    const-string v0, "CallLogFragment"

    const-string v1, "--------DeleteCallHistoryTask.onPreExecute()--------"

    .line 558
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 1

    .line 563
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    const-string p1, "CallLogFragment"

    const-string v0, "--------DeleteCallHistoryTask.onProgressUpdate()--------"

    .line 564
    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
