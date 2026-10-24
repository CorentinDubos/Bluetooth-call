.class public final enum Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;
.super Ljava/lang/Enum;
.source "IPodSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/ipod/IPodSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "E_IPOD_AUTHENTICATION_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;

.field public static final enum IPOD_AUTHENTICATION_FAIL:Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;

.field public static final enum IPOD_AUTHENTICATION_NONE:Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;

.field public static final enum IPOD_AUTHENTICATION_PASS:Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 474
    new-instance v0, Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;

    const-string v1, "IPOD_AUTHENTICATION_PASS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;->IPOD_AUTHENTICATION_PASS:Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;

    .line 478
    new-instance v0, Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;

    const-string v1, "IPOD_AUTHENTICATION_NONE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;->IPOD_AUTHENTICATION_NONE:Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;

    .line 482
    new-instance v0, Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;

    const-string v1, "IPOD_AUTHENTICATION_FAIL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;->IPOD_AUTHENTICATION_FAIL:Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;

    .line 470
    sget-object v5, Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;->IPOD_AUTHENTICATION_PASS:Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;

    aput-object v5, v1, v2

    sget-object v2, Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;->IPOD_AUTHENTICATION_NONE:Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;->$VALUES:[Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 484
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 485
    iput p3, p0, Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 498
    sget-object p0, Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;->IPOD_AUTHENTICATION_FAIL:Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;

    return-object p0

    .line 496
    :cond_0
    sget-object p0, Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;->IPOD_AUTHENTICATION_NONE:Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;

    return-object p0

    .line 494
    :cond_1
    sget-object p0, Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;->IPOD_AUTHENTICATION_PASS:Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;
    .locals 1

    .line 470
    const-class v0, Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;

    return-object p0
.end method

.method public static values()[Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;
    .locals 1

    .line 470
    sget-object v0, Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;->$VALUES:[Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;

    invoke-virtual {v0}, [Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;

    return-object v0
.end method


# virtual methods
.method public next()Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;
    .locals 1

    .line 506
    iget v0, p0, Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;->value:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;->valueOf(I)Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;

    move-result-object v0

    return-object v0
.end method
