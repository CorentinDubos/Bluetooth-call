.class public final enum Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;
.super Ljava/lang/Enum;
.source "CustomerIDConstantDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/CustomerIDConstantDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PROCDUCTION_EXAMPLE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;

.field public static final enum EP:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;

.field public static final enum PP:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24
    new-instance v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;

    const-string v1, "EP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;->EP:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;

    .line 25
    new-instance v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;

    const-string v1, "PP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;->PP:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;

    .line 23
    sget-object v4, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;->EP:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;->$VALUES:[Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;
    .locals 1

    .line 23
    const-class v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;
    .locals 1

    .line 23
    sget-object v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;->$VALUES:[Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;

    return-object v0
.end method
