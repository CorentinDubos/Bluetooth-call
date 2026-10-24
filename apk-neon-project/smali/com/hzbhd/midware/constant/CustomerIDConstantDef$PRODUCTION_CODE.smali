.class public final enum Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;
.super Ljava/lang/Enum;
.source "CustomerIDConstantDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/CustomerIDConstantDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PRODUCTION_CODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;

.field public static final enum AN6QH7:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;

.field public static final enum AVT:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;

.field public static final enum AWA8001:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 37
    new-instance v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;

    const-string v1, "AWA8001"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;->AWA8001:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;

    new-instance v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;

    const-string v1, "AN6QH7"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;->AN6QH7:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;

    new-instance v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;

    const-string v1, "AVT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;->AVT:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;

    .line 36
    sget-object v5, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;->AWA8001:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;

    aput-object v5, v1, v2

    sget-object v2, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;->AN6QH7:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;->$VALUES:[Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;
    .locals 1

    .line 36
    const-class v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;
    .locals 1

    .line 36
    sget-object v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;->$VALUES:[Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;

    return-object v0
.end method
