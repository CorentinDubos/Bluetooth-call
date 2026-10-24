.class public Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;
.super Ljava/lang/Object;
.source "PBSyncParsePclFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/util/PBSyncParsePclFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BT_PROTOCOL_CFG_T"
.end annotation


# instance fields
.field public eComType:I

.field public eMethod:I

.field final synthetic this$0:Lcom/autochips/bluetooth/util/PBSyncParsePclFile;

.field public u1Protocol:I


# direct methods
.method public constructor <init>(Lcom/autochips/bluetooth/util/PBSyncParsePclFile;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->this$0:Lcom/autochips/bluetooth/util/PBSyncParsePclFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
