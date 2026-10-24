.class public Lcom/hzbhd/midwareproxy/utils/WIFIUtils$IP;
.super Ljava/lang/Object;
.source "WIFIUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/utils/WIFIUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IP"
.end annotation


# instance fields
.field password:Ljava/lang/String;

.field ssid:Ljava/lang/String;

.field final synthetic this$0:Lcom/hzbhd/midwareproxy/utils/WIFIUtils;


# direct methods
.method public constructor <init>(Lcom/hzbhd/midwareproxy/utils/WIFIUtils;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/utils/WIFIUtils$IP;->this$0:Lcom/hzbhd/midwareproxy/utils/WIFIUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p2, p0, Lcom/hzbhd/midwareproxy/utils/WIFIUtils$IP;->ssid:Ljava/lang/String;

    .line 198
    iput-object p3, p0, Lcom/hzbhd/midwareproxy/utils/WIFIUtils$IP;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/utils/WIFIUtils$IP;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/utils/WIFIUtils$IP;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/utils/WIFIUtils$IP;->password:Ljava/lang/String;

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/utils/WIFIUtils$IP;->ssid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IP{ssid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/utils/WIFIUtils$IP;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", password=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/utils/WIFIUtils$IP;->password:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
