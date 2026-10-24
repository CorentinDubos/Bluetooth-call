.class public final enum Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;
.super Ljava/lang/Enum;
.source "IPodSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/ipod/IPodSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NOTIFY_INFO_E"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

.field public static final enum AUTH_STATE:Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

.field public static final enum BAD_NOTIFY:Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

.field public static final enum DIGITALAUIDO_CFG:Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

.field public static final enum PB_STATUS:Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

.field public static final enum STATUS_NOTIFY:Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 609
    new-instance v0, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

    const-string v1, "AUTH_STATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;->AUTH_STATE:Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

    .line 610
    new-instance v0, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

    const-string v1, "PB_STATUS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;->PB_STATUS:Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

    .line 611
    new-instance v0, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

    const-string v1, "DIGITALAUIDO_CFG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;->DIGITALAUIDO_CFG:Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

    .line 612
    new-instance v0, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

    const-string v1, "STATUS_NOTIFY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;->STATUS_NOTIFY:Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

    .line 613
    new-instance v0, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

    const-string v1, "BAD_NOTIFY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;->BAD_NOTIFY:Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

    .line 608
    sget-object v7, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;->AUTH_STATE:Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

    aput-object v7, v1, v2

    sget-object v2, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;->PB_STATUS:Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

    aput-object v2, v1, v3

    sget-object v2, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;->DIGITALAUIDO_CFG:Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

    aput-object v2, v1, v4

    sget-object v2, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;->STATUS_NOTIFY:Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;->$VALUES:[Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 615
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 616
    iput p3, p0, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 633
    sget-object p0, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;->BAD_NOTIFY:Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

    return-object p0

    .line 631
    :cond_0
    sget-object p0, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;->STATUS_NOTIFY:Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

    return-object p0

    .line 629
    :cond_1
    sget-object p0, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;->DIGITALAUIDO_CFG:Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

    return-object p0

    .line 627
    :cond_2
    sget-object p0, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;->PB_STATUS:Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

    return-object p0

    .line 625
    :cond_3
    sget-object p0, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;->AUTH_STATE:Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;
    .locals 1

    .line 608
    const-class v0, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

    return-object p0
.end method

.method public static values()[Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;
    .locals 1

    .line 608
    sget-object v0, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;->$VALUES:[Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

    invoke-virtual {v0}, [Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;

    return-object v0
.end method
