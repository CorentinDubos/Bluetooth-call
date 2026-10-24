.class public Lcom/hzbhd/midwareproxy/speechrecognition/TxData;
.super Ljava/lang/Object;
.source "TxData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/speechrecognition/TxData$powerStatus;,
        Lcom/hzbhd/midwareproxy/speechrecognition/TxData$accStatus;,
        Lcom/hzbhd/midwareproxy/speechrecognition/TxData$sourceChange;,
        Lcom/hzbhd/midwareproxy/speechrecognition/TxData$btStatus;,
        Lcom/hzbhd/midwareproxy/speechrecognition/TxData$btIncomingCallRing;,
        Lcom/hzbhd/midwareproxy/speechrecognition/TxData$btOutgoingCallRing;,
        Lcom/hzbhd/midwareproxy/speechrecognition/TxData$btSyncContacts;
    }
.end annotation


# static fields
.field public static final TXAction:Ljava/lang/String; = "com.hzbhd.speech.tx.action"

.field public static final TxType:Ljava/lang/String; = "action_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
