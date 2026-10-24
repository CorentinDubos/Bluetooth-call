.class public final enum Lcom/autochips/ipod/IPodSDK$STATUS_E;
.super Ljava/lang/Enum;
.source "IPodSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/ipod/IPodSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATUS_E"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/autochips/ipod/IPodSDK$STATUS_E;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autochips/ipod/IPodSDK$STATUS_E;

.field public static final enum BAD_STATUS:Lcom/autochips/ipod/IPodSDK$STATUS_E;

.field public static final enum PLUG_IN:Lcom/autochips/ipod/IPodSDK$STATUS_E;

.field public static final enum PLUG_OUT:Lcom/autochips/ipod/IPodSDK$STATUS_E;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 647
    new-instance v0, Lcom/autochips/ipod/IPodSDK$STATUS_E;

    const-string v1, "PLUG_IN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/autochips/ipod/IPodSDK$STATUS_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$STATUS_E;->PLUG_IN:Lcom/autochips/ipod/IPodSDK$STATUS_E;

    .line 652
    new-instance v0, Lcom/autochips/ipod/IPodSDK$STATUS_E;

    const-string v1, "PLUG_OUT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/autochips/ipod/IPodSDK$STATUS_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$STATUS_E;->PLUG_OUT:Lcom/autochips/ipod/IPodSDK$STATUS_E;

    .line 657
    new-instance v0, Lcom/autochips/ipod/IPodSDK$STATUS_E;

    const-string v1, "BAD_STATUS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/autochips/ipod/IPodSDK$STATUS_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$STATUS_E;->BAD_STATUS:Lcom/autochips/ipod/IPodSDK$STATUS_E;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/autochips/ipod/IPodSDK$STATUS_E;

    .line 643
    sget-object v5, Lcom/autochips/ipod/IPodSDK$STATUS_E;->PLUG_IN:Lcom/autochips/ipod/IPodSDK$STATUS_E;

    aput-object v5, v1, v2

    sget-object v2, Lcom/autochips/ipod/IPodSDK$STATUS_E;->PLUG_OUT:Lcom/autochips/ipod/IPodSDK$STATUS_E;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/autochips/ipod/IPodSDK$STATUS_E;->$VALUES:[Lcom/autochips/ipod/IPodSDK$STATUS_E;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 659
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 660
    iput p3, p0, Lcom/autochips/ipod/IPodSDK$STATUS_E;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/autochips/ipod/IPodSDK$STATUS_E;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 673
    sget-object p0, Lcom/autochips/ipod/IPodSDK$STATUS_E;->BAD_STATUS:Lcom/autochips/ipod/IPodSDK$STATUS_E;

    return-object p0

    .line 671
    :cond_0
    sget-object p0, Lcom/autochips/ipod/IPodSDK$STATUS_E;->PLUG_OUT:Lcom/autochips/ipod/IPodSDK$STATUS_E;

    return-object p0

    .line 669
    :cond_1
    sget-object p0, Lcom/autochips/ipod/IPodSDK$STATUS_E;->PLUG_IN:Lcom/autochips/ipod/IPodSDK$STATUS_E;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autochips/ipod/IPodSDK$STATUS_E;
    .locals 1

    .line 643
    const-class v0, Lcom/autochips/ipod/IPodSDK$STATUS_E;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/autochips/ipod/IPodSDK$STATUS_E;

    return-object p0
.end method

.method public static values()[Lcom/autochips/ipod/IPodSDK$STATUS_E;
    .locals 1

    .line 643
    sget-object v0, Lcom/autochips/ipod/IPodSDK$STATUS_E;->$VALUES:[Lcom/autochips/ipod/IPodSDK$STATUS_E;

    invoke-virtual {v0}, [Lcom/autochips/ipod/IPodSDK$STATUS_E;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autochips/ipod/IPodSDK$STATUS_E;

    return-object v0
.end method
