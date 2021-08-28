.class public Lcom/sec/internal/helper/ByteArrayWriter;
.super Ljava/lang/Object;
.source "ByteArrayWriter.java"


# instance fields
.field private final buffer:[B

.field private curPosition:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "length"    # I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/helper/ByteArrayWriter;->curPosition:I

    .line 17
    if-lez p1, :cond_0

    .line 21
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/sec/internal/helper/ByteArrayWriter;->buffer:[B

    .line 22
    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The length must be greater then 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getResult()[B
    .locals 3

    .line 50
    invoke-virtual {p0}, Lcom/sec/internal/helper/ByteArrayWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ByteArrayWriter"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget v0, p0, Lcom/sec/internal/helper/ByteArrayWriter;->curPosition:I

    iget-object v1, p0, Lcom/sec/internal/helper/ByteArrayWriter;->buffer:[B

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 54
    return-object v1

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The result is not completed yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ByteArrayWriter [buffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/helper/ByteArrayWriter;->buffer:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", curPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/helper/ByteArrayWriter;->curPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write([B)V
    .locals 5
    .param p1, "item"    # [B

    .line 30
    if-eqz p1, :cond_2

    .line 34
    array-length v0, p1

    .line 36
    .local v0, "itemLen":I
    iget v1, p0, Lcom/sec/internal/helper/ByteArrayWriter;->curPosition:I

    add-int v2, v1, v0

    iget-object v3, p0, Lcom/sec/internal/helper/ByteArrayWriter;->buffer:[B

    array-length v4, v3

    if-gt v2, v4, :cond_1

    .line 40
    if-lez v0, :cond_0

    .line 41
    const/4 v2, 0x0

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iget v1, p0, Lcom/sec/internal/helper/ByteArrayWriter;->curPosition:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sec/internal/helper/ByteArrayWriter;->curPosition:I

    .line 44
    :cond_0
    return-void

    .line 37
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The buffer is overflowed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    .end local v0    # "itemLen":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The item must be not null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
