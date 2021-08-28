.class public Lcom/google/flatbuffers/Table;
.super Ljava/lang/Object;
.source "Table.java"


# static fields
.field private static final CHAR_BUFFER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/nio/CharBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static final UTF8_CHARSET:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private static final UTF8_DECODER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/nio/charset/CharsetDecoder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected bb:Ljava/nio/ByteBuffer;

.field protected bb_pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/google/flatbuffers/Table$1;

    invoke-direct {v0}, Lcom/google/flatbuffers/Table$1;-><init>()V

    sput-object v0, Lcom/google/flatbuffers/Table;->UTF8_DECODER:Ljava/lang/ThreadLocal;

    .line 43
    new-instance v0, Lcom/google/flatbuffers/Table$2;

    invoke-direct {v0}, Lcom/google/flatbuffers/Table$2;-><init>()V

    sput-object v0, Lcom/google/flatbuffers/Table;->UTF8_CHARSET:Ljava/lang/ThreadLocal;

    .line 49
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/flatbuffers/Table;->CHAR_BUFFER:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static __has_identifier(Ljava/nio/ByteBuffer;Ljava/lang/String;)Z
    .locals 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "ident"    # Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    int-to-char v3, v3

    if-eq v2, v3, :cond_0

    const/4 v1, 0x0

    return v1

    .line 210
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 208
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "FlatBuffers: file identifier must be length 4"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected static __indirect(ILjava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "offset"    # I
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .line 95
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method protected static __offset(IILjava/nio/ByteBuffer;)I
    .locals 3
    .param p0, "vtable_offset"    # I
    .param p1, "offset"    # I
    .param p2, "bb"    # Ljava/nio/ByteBuffer;

    .line 80
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    sub-int/2addr v0, p1

    .line 81
    .local v0, "vtable":I
    add-int v1, v0, p0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method protected static compareStrings(IILjava/nio/ByteBuffer;)I
    .locals 8
    .param p0, "offset_1"    # I
    .param p1, "offset_2"    # I
    .param p2, "bb"    # Ljava/nio/ByteBuffer;

    .line 252
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr p0, v0

    .line 253
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr p1, v0

    .line 254
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 255
    .local v0, "len_1":I
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 256
    .local v1, "len_2":I
    add-int/lit8 v2, p0, 0x4

    .line 257
    .local v2, "startPos_1":I
    add-int/lit8 v3, p1, 0x4

    .line 258
    .local v3, "startPos_2":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 259
    .local v4, "len":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 260
    add-int v6, v5, v2

    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    add-int v7, v5, v3

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    if-eq v6, v7, :cond_0

    .line 261
    add-int v6, v5, v2

    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    add-int v7, v5, v3

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    sub-int/2addr v6, v7

    return v6

    .line 259
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 263
    .end local v5    # "i":I
    :cond_1
    sub-int v5, v0, v1

    return v5
.end method

.method protected static compareStrings(I[BLjava/nio/ByteBuffer;)I
    .locals 7
    .param p0, "offset_1"    # I
    .param p1, "key"    # [B
    .param p2, "bb"    # Ljava/nio/ByteBuffer;

    .line 274
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr p0, v0

    .line 275
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 276
    .local v0, "len_1":I
    array-length v1, p1

    .line 277
    .local v1, "len_2":I
    add-int/lit8 v2, p0, 0x4

    .line 278
    .local v2, "startPos_1":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 279
    .local v3, "len":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 280
    add-int v5, v4, v2

    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    aget-byte v6, p1, v4

    if-eq v5, v6, :cond_0

    .line 281
    add-int v5, v4, v2

    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    aget-byte v6, p1, v4

    sub-int/2addr v5, v6

    return v5

    .line 279
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 283
    .end local v4    # "i":I
    :cond_1
    sub-int v4, v0, v1

    return v4
.end method


# virtual methods
.method protected __indirect(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 91
    iget-object v0, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method protected __offset(I)I
    .locals 3
    .param p1, "vtable_offset"    # I

    .line 75
    iget v0, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    iget-object v1, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 76
    .local v0, "vtable":I
    iget-object v1, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    add-int v2, v0, p1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected __string(I)Ljava/lang/String;
    .locals 7
    .param p1, "offset"    # I

    .line 110
    sget-object v0, Lcom/google/flatbuffers/Table;->UTF8_DECODER:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetDecoder;

    .line 111
    .local v0, "decoder":Ljava/nio/charset/CharsetDecoder;
    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 113
    iget-object v1, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    add-int/2addr p1, v1

    .line 114
    iget-object v1, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 115
    .local v1, "src":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 116
    .local v2, "length":I
    add-int/lit8 v3, p1, 0x4

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 117
    add-int/lit8 v3, p1, 0x4

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 119
    int-to-float v3, v2

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 120
    .local v3, "required":I
    sget-object v4, Lcom/google/flatbuffers/Table;->CHAR_BUFFER:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    .line 121
    .local v4, "dst":Ljava/nio/CharBuffer;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->capacity()I

    move-result v5

    if-ge v5, v3, :cond_1

    .line 122
    :cond_0
    invoke-static {v3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v4

    .line 123
    sget-object v5, Lcom/google/flatbuffers/Table;->CHAR_BUFFER:Ljava/lang/ThreadLocal;

    invoke-virtual {v5, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 126
    :cond_1
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 129
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v0, v1, v4, v5}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v5

    .line 130
    .local v5, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v6

    if-nez v6, :cond_2

    .line 131
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v5    # "cr":Ljava/nio/charset/CoderResult;
    :cond_2
    nop

    .line 137
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 133
    :catch_0
    move-exception v5

    .line 134
    .local v5, "x":Ljava/nio/charset/CharacterCodingException;
    new-instance v6, Ljava/lang/Error;

    invoke-direct {v6, v5}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method protected __union(Lcom/google/flatbuffers/Table;I)Lcom/google/flatbuffers/Table;
    .locals 1
    .param p1, "t"    # Lcom/google/flatbuffers/Table;
    .param p2, "offset"    # I

    .line 192
    iget v0, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr p2, v0

    .line 193
    iget-object v0, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p1, Lcom/google/flatbuffers/Table;->bb_pos:I

    .line 194
    iget-object v0, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    iput-object v0, p1, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    .line 195
    return-object p1
.end method

.method protected __vector(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 159
    iget v0, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr p1, v0

    .line 160
    iget-object v0, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected __vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "vector_offset"    # I
    .param p2, "elem_size"    # I

    .line 175
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    .line 176
    .local v0, "o":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 178
    .local v1, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__vector(I)I

    move-result v2

    .line 179
    .local v2, "vectorstart":I
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__vector_len(I)I

    move-result v3

    mul-int/2addr v3, p2

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 181
    return-object v1
.end method

.method protected __vector_len(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 147
    iget v0, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr p1, v0

    .line 148
    iget-object v0, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr p1, v0

    .line 149
    iget-object v0, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method protected keysCompare(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "o1"    # Ljava/lang/Integer;
    .param p2, "o2"    # Ljava/lang/Integer;
    .param p3, "bb"    # Ljava/nio/ByteBuffer;

    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method protected sortTables([ILjava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "offsets"    # [I
    .param p2, "bb"    # Ljava/nio/ByteBuffer;

    .line 223
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Integer;

    .line 224
    .local v0, "off":[Ljava/lang/Integer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lcom/google/flatbuffers/Table$3;

    invoke-direct {v1, p0, p2}, Lcom/google/flatbuffers/Table$3;-><init>(Lcom/google/flatbuffers/Table;Ljava/nio/ByteBuffer;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 230
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 231
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
