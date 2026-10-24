.class Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$12;
.super Landroid/bluetooth/IPBCallback$Stub;
.source "PBSyncManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V
    .locals 0

    .line 3300
    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$12;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-direct {p0}, Landroid/bluetooth/IPBCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyConnect(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3303
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$12;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v1, 0x6c

    invoke-static {v0, v1, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;ILjava/lang/Object;)V

    return-void
.end method

.method public notifyDisConnect(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3307
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$12;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v1, 0x6e

    invoke-static {v0, v1, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;ILjava/lang/Object;)V

    return-void
.end method

.method public notifyGetList(IIIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3316
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$12;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    iget-object v0, v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iput p1, v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4RecordNum:I

    .line 3317
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$12;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    iget-object p1, p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iput p2, p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4Miss:I

    .line 3318
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$12;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    iget-object p1, p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iput p3, p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4MaxIndex:I

    .line 3319
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$12;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    iget-object p1, p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    const/4 p2, 0x0

    iput p2, p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4StartIdx:I

    .line 3320
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$12;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    iget-object p1, p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->bGetRecNum:Z

    .line 3321
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$12;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/16 p3, 0x67

    invoke-static {p1, p3, p2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;ILjava/lang/Object;)V

    return-void
.end method

.method public notifyGetPhonebook(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3325
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$12;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v1, 0x68

    invoke-static {v0, v1, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;ILjava/lang/Object;)V

    return-void
.end method

.method public notifyGetVcardEntry(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3329
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$12;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v1, 0x6d

    invoke-static {v0, v1, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;ILjava/lang/Object;)V

    return-void
.end method

.method public notifySetPath(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3311
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$12;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v1, 0x66

    invoke-static {v0, v1, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;ILjava/lang/Object;)V

    return-void
.end method
