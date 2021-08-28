.class final Lokio/SegmentedByteString;
.super Lokio/ByteString;
.source "SegmentedByteString.java"


# instance fields
.field final transient directory:[I

.field final transient segments:[[B


# direct methods
.method constructor <init>(Lokio/Buffer;I)V
    .locals 7
    .param p1, "buffer"    # Lokio/Buffer;
    .param p2, "byteCount"    # I

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    .line 56
    iget-wide v1, p1, Lokio/Buffer;->size:J

    int-to-long v5, p2

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "offset":I
    const/4 v1, 0x0

    .line 61
    .local v1, "segmentCount":I
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    .local v2, "s":Lokio/Segment;
    :goto_0
    if-ge v0, p2, :cond_1

    .line 62
    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    if-eq v3, v4, :cond_0

    .line 65
    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 61
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    .line 63
    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v4, "s.limit == s.pos"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 70
    .end local v2    # "s":Lokio/Segment;
    :cond_1
    new-array v2, v1, [[B

    iput-object v2, p0, Lokio/SegmentedByteString;->segments:[[B

    .line 71
    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lokio/SegmentedByteString;->directory:[I

    .line 72
    const/4 v0, 0x0

    .line 73
    const/4 v1, 0x0

    .line 74
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    .restart local v2    # "s":Lokio/Segment;
    :goto_1
    if-ge v0, p2, :cond_2

    .line 75
    iget-object v3, p0, Lokio/SegmentedByteString;->segments:[[B

    iget-object v4, v2, Lokio/Segment;->data:[B

    aput-object v4, v3, v1

    .line 76
    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 77
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I

    aput v0, v3, v1

    .line 78
    iget-object v4, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v4, v4

    add-int/2addr v4, v1

    iget v5, v2, Lokio/Segment;->pos:I

    aput v5, v3, v4

    .line 79
    const/4 v3, 0x1

    iput-boolean v3, v2, Lokio/Segment;->shared:Z

    .line 80
    add-int/lit8 v1, v1, 0x1

    .line 74
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1

    .line 82
    .end local v2    # "s":Lokio/Segment;
    :cond_2
    return-void
.end method

.method private segment(I)I
    .locals 4
    .param p1, "pos"    # I

    .line 135
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    .line 136
    .local v0, "i":I
    if-ltz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    not-int v1, v0

    :goto_0
    return v1
.end method

.method private toByteString()Lokio/ByteString;
    .locals 2

    .line 221
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .line 256
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public base64()Ljava/lang/String;
    .locals 1

    .line 89
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .locals 1

    .line 113
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->base64Url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 225
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 226
    :cond_0
    instance-of v1, p1, Lokio/ByteString;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lokio/ByteString;

    .line 227
    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v3

    if-ne v1, v3, :cond_1

    move-object v1, p1

    check-cast v1, Lokio/ByteString;

    .line 228
    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v3

    invoke-virtual {p0, v2, v1, v2, v3}, Lokio/SegmentedByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0
.end method

.method public getByte(I)B
    .locals 7
    .param p1, "pos"    # I

    .line 125
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v1, v0

    int-to-long v3, p1

    const-wide/16 v5, 0x1

    invoke-static/range {v1 .. v6}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 126
    invoke-direct {p0, p1}, Lokio/SegmentedByteString;->segment(I)I

    move-result v0

    .line 127
    .local v0, "segment":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    .line 128
    .local v1, "segmentOffset":I
    :goto_0
    iget-object v2, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v3, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v4, v3

    add-int/2addr v4, v0

    aget v2, v2, v4

    .line 129
    .local v2, "segmentPos":I
    aget-object v3, v3, v0

    sub-int v4, p1, v1

    add-int/2addr v4, v2

    aget-byte v3, v3, v4

    return v3
.end method

.method public hashCode()I
    .locals 12

    .line 232
    iget v0, p0, Lokio/SegmentedByteString;->hashCode:I

    .line 233
    .local v0, "result":I
    if-eqz v0, :cond_0

    return v0

    .line 236
    :cond_0
    const/4 v0, 0x1

    .line 237
    const/4 v1, 0x0

    .line 238
    .local v1, "segmentOffset":I
    const/4 v2, 0x0

    .local v2, "s":I
    iget-object v3, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v3, v3

    .local v3, "segmentCount":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 239
    iget-object v4, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v4, v4, v2

    .line 240
    .local v4, "segment":[B
    iget-object v5, p0, Lokio/SegmentedByteString;->directory:[I

    add-int v6, v3, v2

    aget v6, v5, v6

    .line 241
    .local v6, "segmentPos":I
    aget v5, v5, v2

    .line 242
    .local v5, "nextSegmentOffset":I
    sub-int v7, v5, v1

    .line 243
    .local v7, "segmentSize":I
    move v8, v6

    .local v8, "i":I
    add-int v9, v6, v7

    .local v9, "limit":I
    :goto_1
    if-ge v8, v9, :cond_1

    .line 244
    mul-int/lit8 v10, v0, 0x1f

    aget-byte v11, v4, v8

    add-int v0, v10, v11

    .line 243
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 246
    .end local v8    # "i":I
    .end local v9    # "limit":I
    :cond_1
    move v1, v5

    .line 238
    .end local v4    # "segment":[B
    .end local v5    # "nextSegmentOffset":I
    .end local v6    # "segmentPos":I
    .end local v7    # "segmentSize":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    .end local v2    # "s":I
    .end local v3    # "segmentCount":I
    :cond_2
    iput v0, p0, Lokio/SegmentedByteString;->hashCode:I

    return v0
.end method

.method public hex()Ljava/lang/String;
    .locals 1

    .line 93
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public md5()Lokio/ByteString;
    .locals 1

    .line 105
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->md5()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(ILokio/ByteString;II)Z
    .locals 8
    .param p1, "offset"    # I
    .param p2, "other"    # Lokio/ByteString;
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    .line 186
    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v0

    sub-int/2addr v0, p4

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    return v1

    .line 188
    :cond_0
    invoke-direct {p0, p1}, Lokio/SegmentedByteString;->segment(I)I

    move-result v0

    .local v0, "s":I
    :goto_0
    if-lez p4, :cond_3

    .line 189
    if-nez v0, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    .line 190
    .local v2, "segmentOffset":I
    :goto_1
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I

    aget v3, v3, v0

    sub-int/2addr v3, v2

    .line 191
    .local v3, "segmentSize":I
    add-int v4, v2, v3

    sub-int/2addr v4, p1

    invoke-static {p4, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 192
    .local v4, "stepSize":I
    iget-object v5, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v6, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v7, v6

    add-int/2addr v7, v0

    aget v5, v5, v7

    .line 193
    .local v5, "segmentPos":I
    sub-int v7, p1, v2

    add-int/2addr v7, v5

    .line 194
    .local v7, "arrayOffset":I
    aget-object v6, v6, v0

    invoke-virtual {p2, p3, v6, v7, v4}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v6

    if-nez v6, :cond_2

    return v1

    .line 195
    :cond_2
    add-int/2addr p1, v4

    .line 196
    add-int/2addr p3, v4

    .line 197
    sub-int/2addr p4, v4

    .line 188
    .end local v2    # "segmentOffset":I
    .end local v3    # "segmentSize":I
    .end local v4    # "stepSize":I
    .end local v5    # "segmentPos":I
    .end local v7    # "arrayOffset":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    .end local v0    # "s":I
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public rangeEquals(I[BII)Z
    .locals 8
    .param p1, "offset"    # I
    .param p2, "other"    # [B
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    .line 203
    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v0

    sub-int/2addr v0, p4

    const/4 v1, 0x0

    if-gt p1, v0, :cond_4

    array-length v0, p2

    sub-int/2addr v0, p4

    if-le p3, v0, :cond_0

    goto :goto_2

    .line 205
    :cond_0
    invoke-direct {p0, p1}, Lokio/SegmentedByteString;->segment(I)I

    move-result v0

    .local v0, "s":I
    :goto_0
    if-lez p4, :cond_3

    .line 206
    if-nez v0, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    .line 207
    .local v2, "segmentOffset":I
    :goto_1
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I

    aget v3, v3, v0

    sub-int/2addr v3, v2

    .line 208
    .local v3, "segmentSize":I
    add-int v4, v2, v3

    sub-int/2addr v4, p1

    invoke-static {p4, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 209
    .local v4, "stepSize":I
    iget-object v5, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v6, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v7, v6

    add-int/2addr v7, v0

    aget v5, v5, v7

    .line 210
    .local v5, "segmentPos":I
    sub-int v7, p1, v2

    add-int/2addr v7, v5

    .line 211
    .local v7, "arrayOffset":I
    aget-object v6, v6, v0

    invoke-static {v6, v7, p2, p3, v4}, Lokio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v6

    if-nez v6, :cond_2

    return v1

    .line 212
    :cond_2
    add-int/2addr p1, v4

    .line 213
    add-int/2addr p3, v4

    .line 214
    sub-int/2addr p4, v4

    .line 205
    .end local v2    # "segmentOffset":I
    .end local v3    # "segmentSize":I
    .end local v4    # "stepSize":I
    .end local v5    # "segmentPos":I
    .end local v7    # "arrayOffset":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    .end local v0    # "s":I
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 203
    :cond_4
    :goto_2
    return v1
.end method

.method public sha256()Lokio/ByteString;
    .locals 1

    .line 109
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->sha256()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 140
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public substring(I)Lokio/ByteString;
    .locals 1
    .param p1, "beginIndex"    # I

    .line 117
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokio/ByteString;->substring(I)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Lokio/ByteString;
    .locals 1
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 121
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toAsciiLowercase()Lokio/ByteString;
    .locals 1

    .line 97
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toAsciiUppercase()Lokio/ByteString;
    .locals 1

    .line 101
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toAsciiUppercase()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 8

    .line 144
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    new-array v0, v0, [B

    .line 145
    .local v0, "result":[B
    const/4 v2, 0x0

    .line 146
    .local v2, "segmentOffset":I
    const/4 v3, 0x0

    .local v3, "s":I
    array-length v1, v1

    .local v1, "segmentCount":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 147
    iget-object v4, p0, Lokio/SegmentedByteString;->directory:[I

    add-int v5, v1, v3

    aget v5, v4, v5

    .line 148
    .local v5, "segmentPos":I
    aget v4, v4, v3

    .line 149
    .local v4, "nextSegmentOffset":I
    iget-object v6, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v6, v6, v3

    sub-int v7, v4, v2

    invoke-static {v6, v5, v0, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    move v2, v4

    .line 146
    .end local v4    # "nextSegmentOffset":I
    .end local v5    # "segmentPos":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "segmentCount":I
    .end local v3    # "s":I
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 252
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public utf8()Ljava/lang/String;
    .locals 1

    .line 85
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    if-eqz p1, :cond_1

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "segmentOffset":I
    const/4 v1, 0x0

    .local v1, "s":I
    iget-object v2, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v2, v2

    .local v2, "segmentCount":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 160
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I

    add-int v4, v2, v1

    aget v4, v3, v4

    .line 161
    .local v4, "segmentPos":I
    aget v3, v3, v1

    .line 162
    .local v3, "nextSegmentOffset":I
    iget-object v5, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v5, v5, v1

    sub-int v6, v3, v0

    invoke-virtual {p1, v5, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 163
    move v0, v3

    .line 159
    .end local v3    # "nextSegmentOffset":I
    .end local v4    # "segmentPos":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v1    # "s":I
    .end local v2    # "segmentCount":I
    :cond_0
    return-void

    .line 157
    .end local v0    # "segmentOffset":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method write(Lokio/Buffer;)V
    .locals 8
    .param p1, "buffer"    # Lokio/Buffer;

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "segmentOffset":I
    const/4 v1, 0x0

    .local v1, "s":I
    iget-object v2, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v2, v2

    .local v2, "segmentCount":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 170
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I

    add-int v4, v2, v1

    aget v4, v3, v4

    .line 171
    .local v4, "segmentPos":I
    aget v3, v3, v1

    .line 172
    .local v3, "nextSegmentOffset":I
    new-instance v5, Lokio/Segment;

    iget-object v6, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v6, v6, v1

    add-int v7, v4, v3

    sub-int/2addr v7, v0

    invoke-direct {v5, v6, v4, v7}, Lokio/Segment;-><init>([BII)V

    .line 174
    .local v5, "segment":Lokio/Segment;
    iget-object v6, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v6, :cond_0

    .line 175
    iput-object v5, v5, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v5, v5, Lokio/Segment;->next:Lokio/Segment;

    iput-object v5, p1, Lokio/Buffer;->head:Lokio/Segment;

    goto :goto_1

    .line 177
    :cond_0
    iget-object v6, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v6, v6, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v6, v5}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 179
    :goto_1
    move v0, v3

    .line 169
    .end local v3    # "nextSegmentOffset":I
    .end local v4    # "segmentPos":I
    .end local v5    # "segment":Lokio/Segment;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v1    # "s":I
    .end local v2    # "segmentCount":I
    :cond_1
    iget-wide v1, p1, Lokio/Buffer;->size:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p1, Lokio/Buffer;->size:J

    .line 182
    return-void
.end method
