.class public final enum Lcom/hzbhd/common/ui/TopBar$SXMSignal;
.super Ljava/lang/Enum;
.source "TopBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/common/ui/TopBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SXMSignal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/common/ui/TopBar$SXMSignal;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/common/ui/TopBar$SXMSignal;

.field public static final enum LEVEL_0:Lcom/hzbhd/common/ui/TopBar$SXMSignal;

.field public static final enum LEVEL_1:Lcom/hzbhd/common/ui/TopBar$SXMSignal;

.field public static final enum LEVEL_2:Lcom/hzbhd/common/ui/TopBar$SXMSignal;

.field public static final enum LEVEL_3:Lcom/hzbhd/common/ui/TopBar$SXMSignal;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 77
    new-instance v0, Lcom/hzbhd/common/ui/TopBar$SXMSignal;

    const-string v1, "LEVEL_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/common/ui/TopBar$SXMSignal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/common/ui/TopBar$SXMSignal;->LEVEL_0:Lcom/hzbhd/common/ui/TopBar$SXMSignal;

    new-instance v0, Lcom/hzbhd/common/ui/TopBar$SXMSignal;

    const-string v1, "LEVEL_1"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/common/ui/TopBar$SXMSignal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/common/ui/TopBar$SXMSignal;->LEVEL_1:Lcom/hzbhd/common/ui/TopBar$SXMSignal;

    new-instance v0, Lcom/hzbhd/common/ui/TopBar$SXMSignal;

    const-string v1, "LEVEL_2"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/common/ui/TopBar$SXMSignal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/common/ui/TopBar$SXMSignal;->LEVEL_2:Lcom/hzbhd/common/ui/TopBar$SXMSignal;

    new-instance v0, Lcom/hzbhd/common/ui/TopBar$SXMSignal;

    const-string v1, "LEVEL_3"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/common/ui/TopBar$SXMSignal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/common/ui/TopBar$SXMSignal;->LEVEL_3:Lcom/hzbhd/common/ui/TopBar$SXMSignal;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/hzbhd/common/ui/TopBar$SXMSignal;

    .line 76
    sget-object v6, Lcom/hzbhd/common/ui/TopBar$SXMSignal;->LEVEL_0:Lcom/hzbhd/common/ui/TopBar$SXMSignal;

    aput-object v6, v1, v2

    sget-object v2, Lcom/hzbhd/common/ui/TopBar$SXMSignal;->LEVEL_1:Lcom/hzbhd/common/ui/TopBar$SXMSignal;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/common/ui/TopBar$SXMSignal;->LEVEL_2:Lcom/hzbhd/common/ui/TopBar$SXMSignal;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/hzbhd/common/ui/TopBar$SXMSignal;->$VALUES:[Lcom/hzbhd/common/ui/TopBar$SXMSignal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/common/ui/TopBar$SXMSignal;
    .locals 1

    .line 76
    const-class v0, Lcom/hzbhd/common/ui/TopBar$SXMSignal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/common/ui/TopBar$SXMSignal;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/common/ui/TopBar$SXMSignal;
    .locals 1

    .line 76
    sget-object v0, Lcom/hzbhd/common/ui/TopBar$SXMSignal;->$VALUES:[Lcom/hzbhd/common/ui/TopBar$SXMSignal;

    invoke-virtual {v0}, [Lcom/hzbhd/common/ui/TopBar$SXMSignal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/common/ui/TopBar$SXMSignal;

    return-object v0
.end method
