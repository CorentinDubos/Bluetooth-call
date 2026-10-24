.class public Lcom/autochips/ipod/IPodSDK$PLAY_ST_INFO_T;
.super Ljava/lang/Object;
.source "IPodSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/ipod/IPodSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PLAY_ST_INFO_T"
.end annotation


# instance fields
.field public ePbStatus:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

.field public trackIdx:I

.field public trackLen:I

.field public trackPos:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(IIII)V
    .locals 0

    .line 731
    iput p1, p0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_INFO_T;->trackIdx:I

    .line 732
    iput p2, p0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_INFO_T;->trackLen:I

    .line 733
    iput p3, p0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_INFO_T;->trackPos:I

    .line 734
    invoke-static {p4}, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->valueOf(I)Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_INFO_T;->ePbStatus:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    return-void
.end method
