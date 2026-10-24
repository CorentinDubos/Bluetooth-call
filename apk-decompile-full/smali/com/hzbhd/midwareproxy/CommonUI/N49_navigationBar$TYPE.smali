.class final enum Lcom/hzbhd/midwareproxy/CommonUI/N49_navigationBar$TYPE;
.super Ljava/lang/Enum;
.source "N49_navigationBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/CommonUI/N49_navigationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midwareproxy/CommonUI/N49_navigationBar$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midwareproxy/CommonUI/N49_navigationBar$TYPE;

.field public static final enum IMAGE:Lcom/hzbhd/midwareproxy/CommonUI/N49_navigationBar$TYPE;

.field public static final enum STRING:Lcom/hzbhd/midwareproxy/CommonUI/N49_navigationBar$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 26
    new-instance v0, Lcom/hzbhd/midwareproxy/CommonUI/N49_navigationBar$TYPE;

    const-string v1, "STRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midwareproxy/CommonUI/N49_navigationBar$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/CommonUI/N49_navigationBar$TYPE;->STRING:Lcom/hzbhd/midwareproxy/CommonUI/N49_navigationBar$TYPE;

    .line 27
    new-instance v0, Lcom/hzbhd/midwareproxy/CommonUI/N49_navigationBar$TYPE;

    const-string v1, "IMAGE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midwareproxy/CommonUI/N49_navigationBar$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/CommonUI/N49_navigationBar$TYPE;->IMAGE:Lcom/hzbhd/midwareproxy/CommonUI/N49_navigationBar$TYPE;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/hzbhd/midwareproxy/CommonUI/N49_navigationBar$TYPE;

    .line 25
    sget-object v4, Lcom/hzbhd/midwareproxy/CommonUI/N49_navigationBar$TYPE;->STRING:Lcom/hzbhd/midwareproxy/CommonUI/N49_navigationBar$TYPE;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/hzbhd/midwareproxy/CommonUI/N49_navigationBar$TYPE;->$VALUES:[Lcom/hzbhd/midwareproxy/CommonUI/N49_navigationBar$TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midwareproxy/CommonUI/N49_navigationBar$TYPE;
    .locals 1

    .line 25
    const-class v0, Lcom/hzbhd/midwareproxy/CommonUI/N49_navigationBar$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midwareproxy/CommonUI/N49_navigationBar$TYPE;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midwareproxy/CommonUI/N49_navigationBar$TYPE;
    .locals 1

    .line 25
    sget-object v0, Lcom/hzbhd/midwareproxy/CommonUI/N49_navigationBar$TYPE;->$VALUES:[Lcom/hzbhd/midwareproxy/CommonUI/N49_navigationBar$TYPE;

    invoke-virtual {v0}, [Lcom/hzbhd/midwareproxy/CommonUI/N49_navigationBar$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midwareproxy/CommonUI/N49_navigationBar$TYPE;

    return-object v0
.end method
