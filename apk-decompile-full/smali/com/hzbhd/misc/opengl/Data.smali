.class public Lcom/hzbhd/misc/opengl/Data;
.super Ljava/lang/Object;
.source "Data.java"


# static fields
.field static TAG:Ljava/lang/String;

.field static mDatas:Lcom/hzbhd/misc/opengl/Data;


# instance fields
.field h:I

.field rgb:[I

.field u:[B

.field uv:[B

.field v:[B

.field w:I

.field y:[B

.field yuv:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/hzbhd/misc/opengl/Data;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_opengl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/misc/opengl/Data;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x780

    .line 24
    iput v0, p0, Lcom/hzbhd/misc/opengl/Data;->w:I

    const/16 v1, 0x438

    .line 25
    iput v1, p0, Lcom/hzbhd/misc/opengl/Data;->h:I

    .line 26
    iget-object v2, p0, Lcom/hzbhd/misc/opengl/Data;->rgb:[I

    if-nez v2, :cond_0

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/hzbhd/misc/opengl/Data;->rgb:[I

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/Data;->yuv:[B

    if-nez v0, :cond_1

    iget v0, p0, Lcom/hzbhd/misc/opengl/Data;->w:I

    iget v1, p0, Lcom/hzbhd/misc/opengl/Data;->h:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hzbhd/misc/opengl/Data;->yuv:[B

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/Data;->y:[B

    if-nez v0, :cond_2

    iget v0, p0, Lcom/hzbhd/misc/opengl/Data;->w:I

    iget v1, p0, Lcom/hzbhd/misc/opengl/Data;->h:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hzbhd/misc/opengl/Data;->y:[B

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/Data;->u:[B

    if-nez v0, :cond_3

    iget v0, p0, Lcom/hzbhd/misc/opengl/Data;->w:I

    iget v1, p0, Lcom/hzbhd/misc/opengl/Data;->h:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hzbhd/misc/opengl/Data;->u:[B

    .line 30
    :cond_3
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/Data;->v:[B

    if-nez v0, :cond_4

    iget v0, p0, Lcom/hzbhd/misc/opengl/Data;->w:I

    iget v1, p0, Lcom/hzbhd/misc/opengl/Data;->h:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hzbhd/misc/opengl/Data;->v:[B

    .line 31
    :cond_4
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/Data;->uv:[B

    if-nez v0, :cond_5

    iget v0, p0, Lcom/hzbhd/misc/opengl/Data;->w:I

    iget v1, p0, Lcom/hzbhd/misc/opengl/Data;->h:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hzbhd/misc/opengl/Data;->uv:[B

    :cond_5
    const/4 v0, 0x0

    move v1, v0

    .line 32
    :goto_0
    iget v2, p0, Lcom/hzbhd/misc/opengl/Data;->w:I

    iget v3, p0, Lcom/hzbhd/misc/opengl/Data;->h:I

    invoke-virtual {p0, v2, v3}, Lcom/hzbhd/misc/opengl/Data;->y_length(II)I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 33
    iget-object v2, p0, Lcom/hzbhd/misc/opengl/Data;->y:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :cond_6
    :goto_1
    iget v1, p0, Lcom/hzbhd/misc/opengl/Data;->w:I

    iget v2, p0, Lcom/hzbhd/misc/opengl/Data;->h:I

    invoke-virtual {p0, v1, v2}, Lcom/hzbhd/misc/opengl/Data;->uv_length(II)I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 36
    iget-object v1, p0, Lcom/hzbhd/misc/opengl/Data;->uv:[B

    const/16 v2, -0x80

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method public static getInstance()Lcom/hzbhd/misc/opengl/Data;
    .locals 1

    .line 41
    sget-object v0, Lcom/hzbhd/misc/opengl/Data;->mDatas:Lcom/hzbhd/misc/opengl/Data;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/hzbhd/misc/opengl/Data;

    invoke-direct {v0}, Lcom/hzbhd/misc/opengl/Data;-><init>()V

    sput-object v0, Lcom/hzbhd/misc/opengl/Data;->mDatas:Lcom/hzbhd/misc/opengl/Data;

    .line 44
    :cond_0
    sget-object v0, Lcom/hzbhd/misc/opengl/Data;->mDatas:Lcom/hzbhd/misc/opengl/Data;

    return-object v0
.end method


# virtual methods
.method public putData(II[B)V
    .locals 5

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,  yuv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "opengl"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 69
    :cond_0
    iput p1, p0, Lcom/hzbhd/misc/opengl/Data;->w:I

    .line 70
    iput p2, p0, Lcom/hzbhd/misc/opengl/Data;->h:I

    .line 71
    iput-object p3, p0, Lcom/hzbhd/misc/opengl/Data;->yuv:[B

    const/4 v0, 0x0

    move v2, v0

    .line 72
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/misc/opengl/Data;->y_length(II)I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 73
    aget-byte v3, p3, v2

    if-nez v3, :cond_1

    .line 74
    iget-object v3, p0, Lcom/hzbhd/misc/opengl/Data;->y:[B

    aput-byte v0, v3, v2

    goto :goto_1

    .line 76
    :cond_1
    iget-object v3, p0, Lcom/hzbhd/misc/opengl/Data;->y:[B

    aget-byte v4, p3, v2

    aput-byte v4, v3, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v0

    .line 79
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/misc/opengl/Data;->uv_length(II)I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 80
    aget-byte v3, p3, v2

    if-nez v3, :cond_3

    .line 81
    iget-object v3, p0, Lcom/hzbhd/misc/opengl/Data;->uv:[B

    const/16 v4, -0x80

    aput-byte v4, v3, v2

    goto :goto_3

    .line 83
    :cond_3
    iget-object v3, p0, Lcom/hzbhd/misc/opengl/Data;->uv:[B

    mul-int v4, p1, p2

    add-int/2addr v4, v2

    aget-byte v4, p3, v4

    aput-byte v4, v3, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    mul-int v2, p1, p2

    .line 86
    :goto_4
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/misc/opengl/Data;->u_length(II)I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 87
    iget-object v3, p0, Lcom/hzbhd/misc/opengl/Data;->v:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p3, v2

    aput-byte v2, v3, v0

    .line 88
    iget-object v2, p0, Lcom/hzbhd/misc/opengl/Data;->u:[B

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p3, v4

    aput-byte v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_4

    :cond_5
    const-string p1, "newData 22"

    .line 90
    invoke-static {v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resetData()V
    .locals 5

    const-string v0, "opengl"

    const-string/jumbo v1, "resetData 1111"

    .line 49
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    .line 51
    :goto_0
    iget v3, p0, Lcom/hzbhd/misc/opengl/Data;->w:I

    iget v4, p0, Lcom/hzbhd/misc/opengl/Data;->h:I

    invoke-virtual {p0, v3, v4}, Lcom/hzbhd/misc/opengl/Data;->y_length(II)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 52
    iget-object v3, p0, Lcom/hzbhd/misc/opengl/Data;->y:[B

    aput-byte v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_0
    :goto_1
    iget v2, p0, Lcom/hzbhd/misc/opengl/Data;->w:I

    iget v3, p0, Lcom/hzbhd/misc/opengl/Data;->h:I

    invoke-virtual {p0, v2, v3}, Lcom/hzbhd/misc/opengl/Data;->uv_length(II)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 55
    iget-object v2, p0, Lcom/hzbhd/misc/opengl/Data;->uv:[B

    const/16 v3, -0x80

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 57
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hzbhd/misc/opengl/Data;->u:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , resetData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hzbhd/misc/opengl/Data;->v:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hzbhd/misc/opengl/Data;->yuv:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "resetData 2222"

    .line 63
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public u_length(II)I
    .locals 0

    mul-int/2addr p1, p2

    .line 101
    div-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public uv_length(II)I
    .locals 0

    mul-int/2addr p1, p2

    .line 98
    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public v_length(II)I
    .locals 0

    mul-int/2addr p1, p2

    .line 104
    div-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public y_length(II)I
    .locals 0

    mul-int/2addr p1, p2

    return p1
.end method
