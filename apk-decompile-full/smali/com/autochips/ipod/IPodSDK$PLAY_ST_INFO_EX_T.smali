.class public Lcom/autochips/ipod/IPodSDK$PLAY_ST_INFO_EX_T;
.super Ljava/lang/Object;
.source "IPodSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/ipod/IPodSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PLAY_ST_INFO_EX_T"
.end annotation


# instance fields
.field public ePbStatus:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

.field public trackLen:I

.field public trackPos:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(III)V
    .locals 0

    .line 761
    iput p1, p0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_INFO_EX_T;->trackLen:I

    .line 762
    iput p2, p0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_INFO_EX_T;->trackPos:I

    .line 763
    invoke-static {p3}, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->valueOf(I)Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_INFO_EX_T;->ePbStatus:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    return-void
.end method
