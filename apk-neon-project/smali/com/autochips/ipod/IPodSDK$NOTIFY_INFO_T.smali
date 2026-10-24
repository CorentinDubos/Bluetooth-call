.class public Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_T;
.super Ljava/lang/Object;
.source "IPodSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/ipod/IPodSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NOTIFY_INFO_T"
.end annotation


# instance fields
.field public eNotifyType:Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

.field public rNotify:Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_A;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(ILcom/autochips/ipod/IPodSDK$NOTIFY_INFO_A;)V
    .locals 0

    .line 1615
    invoke-static {p1}, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;->valueOf(I)Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_T;->eNotifyType:Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

    .line 1616
    iput-object p2, p0, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_T;->rNotify:Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_A;

    return-void
.end method
