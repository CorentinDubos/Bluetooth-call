.class Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$DownloadListNode;
.super Ljava/lang/Object;
.source "PBSyncManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadListNode"
.end annotation


# instance fields
.field public bContinue:Z

.field public btaddr:Ljava/lang/String;

.field public downloadpath:I

.field public eMsg:I

.field final synthetic this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;


# direct methods
.method private constructor <init>(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$DownloadListNode;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$1;)V
    .locals 0

    .line 238
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$DownloadListNode;-><init>(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    return-void
.end method
