.class public Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;
.super Ljava/lang/Object;
.source "PBSyncParsePclFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/util/PBSyncParsePclFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BT_PHONE_INFO_NODE_T"
.end annotation


# instance fields
.field public rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

.field public sSerial:Ljava/lang/String;

.field final synthetic this$0:Lcom/autochips/bluetooth/util/PBSyncParsePclFile;


# direct methods
.method public constructor <init>(Lcom/autochips/bluetooth/util/PBSyncParsePclFile;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->this$0:Lcom/autochips/bluetooth/util/PBSyncParsePclFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
