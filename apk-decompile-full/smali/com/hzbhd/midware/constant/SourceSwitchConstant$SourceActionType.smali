.class public final enum Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;
.super Ljava/lang/Enum;
.source "SourceSwitchConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/SourceSwitchConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SourceActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

.field public static final enum DISCONNECT:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

.field public static final enum PAUSE:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

.field public static final enum RUN:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

.field public static final enum STOP:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

.field public static final enum SourceChange:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

.field public static final enum StartActivity:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

.field public static final enum UIFinish:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

.field public static final enum UPDATE:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 9
    new-instance v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

    const-string v1, "STOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;->STOP:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

    .line 13
    new-instance v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

    const-string v1, "RUN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;->RUN:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

    .line 17
    new-instance v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

    const-string v1, "UPDATE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;->UPDATE:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

    .line 21
    new-instance v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

    const-string v1, "DISCONNECT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;->DISCONNECT:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

    .line 25
    new-instance v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

    const-string v1, "SourceChange"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;->SourceChange:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

    .line 29
    new-instance v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

    const-string v1, "StartActivity"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;->StartActivity:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

    .line 34
    new-instance v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

    const-string v1, "PAUSE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;->PAUSE:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

    .line 38
    new-instance v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

    const-string v1, "UIFinish"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;->UIFinish:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

    .line 5
    sget-object v10, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;->STOP:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

    aput-object v10, v1, v2

    sget-object v2, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;->RUN:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;->UPDATE:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;->DISCONNECT:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;->SourceChange:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;->StartActivity:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;->PAUSE:Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;->$VALUES:[Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;
    .locals 1

    .line 5
    const-class v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;
    .locals 1

    .line 5
    sget-object v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;->$VALUES:[Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/SourceSwitchConstant$SourceActionType;

    return-object v0
.end method
