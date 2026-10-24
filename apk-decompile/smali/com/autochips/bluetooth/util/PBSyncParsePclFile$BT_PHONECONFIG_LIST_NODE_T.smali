.class public Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_NODE_T;
.super Ljava/lang/Object;
.source "PBSyncParsePclFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/util/PBSyncParsePclFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BT_PHONECONFIG_LIST_NODE_T"
.end annotation


# instance fields
.field public rSerialList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;",
            ">;"
        }
    .end annotation
.end field

.field public sFactory:Ljava/lang/String;

.field final synthetic this$0:Lcom/autochips/bluetooth/util/PBSyncParsePclFile;

.field public u4Curcnt:I


# direct methods
.method public constructor <init>(Lcom/autochips/bluetooth/util/PBSyncParsePclFile;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_NODE_T;->this$0:Lcom/autochips/bluetooth/util/PBSyncParsePclFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_NODE_T;->rSerialList:Ljava/util/List;

    return-void
.end method
