.class final Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;
.super Ljava/lang/Object;
.source "DistinguishedNameParser.java"


# instance fields
.field private beg:I

.field private chars:[C

.field private cur:I

.field private final dn:Ljava/lang/String;

.field private end:I

.field private final length:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1
    .param p1, "principal"    # Ljavax/security/auth/x500/X500Principal;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    .line 45
    return-void
.end method

.method private escapedAV()Ljava/lang/String;
    .locals 8

    .line 188
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    .line 189
    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    .line 191
    :cond_0
    :goto_0
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_1

    .line 193
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    const/16 v3, 0x2c

    const/16 v4, 0x2b

    const/16 v5, 0x3b

    const/16 v6, 0x20

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    const/16 v5, 0x5c

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_3

    if-eq v2, v3, :cond_3

    .line 225
    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    aget-char v3, v1, v0

    aput-char v3, v1, v2

    .line 226
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_0

    .line 204
    :cond_2
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->getEscaped()C

    move-result v2

    aput-char v2, v1, v0

    .line 205
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 206
    goto :goto_0

    .line 201
    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 210
    :cond_4
    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    iput v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->cur:I

    .line 212
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 213
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    aput-char v6, v1, v2

    .line 215
    :goto_1
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    if-ne v2, v6, :cond_5

    .line 216
    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    add-int/lit8 v7, v2, 0x1

    iput v7, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    aput-char v6, v1, v2

    .line 215
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_1

    .line 218
    :cond_5
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_6

    iget-object v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    if-eq v2, v3, :cond_6

    aget-char v2, v1, v0

    if-eq v2, v4, :cond_6

    aget-char v0, v1, v0

    if-ne v0, v5, :cond_0

    .line 221
    :cond_6
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->cur:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private getByte(I)I
    .locals 10
    .param p1, "position"    # I

    .line 312
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    const-string v2, "Malformed DN: "

    if-ge v0, v1, :cond_6

    .line 318
    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v0, v0, p1

    .line 319
    .local v0, "b1":I
    const/16 v1, 0x46

    const/16 v3, 0x66

    const/16 v4, 0x41

    const/16 v5, 0x39

    const/16 v6, 0x61

    const/16 v7, 0x30

    if-lt v0, v7, :cond_0

    if-gt v0, v5, :cond_0

    .line 320
    sub-int/2addr v0, v7

    goto :goto_0

    .line 321
    :cond_0
    if-lt v0, v6, :cond_1

    if-gt v0, v3, :cond_1

    .line 322
    add-int/lit8 v0, v0, -0x57

    goto :goto_0

    .line 323
    :cond_1
    if-lt v0, v4, :cond_5

    if-gt v0, v1, :cond_5

    .line 324
    add-int/lit8 v0, v0, -0x37

    .line 329
    :goto_0
    iget-object v8, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    add-int/lit8 v9, p1, 0x1

    aget-char v8, v8, v9

    .line 330
    .local v8, "b2":I
    if-lt v8, v7, :cond_2

    if-gt v8, v5, :cond_2

    .line 331
    sub-int/2addr v8, v7

    goto :goto_1

    .line 332
    :cond_2
    if-lt v8, v6, :cond_3

    if-gt v8, v3, :cond_3

    .line 333
    add-int/lit8 v8, v8, -0x57

    goto :goto_1

    .line 334
    :cond_3
    if-lt v8, v4, :cond_4

    if-gt v8, v1, :cond_4

    .line 335
    add-int/lit8 v8, v8, -0x37

    .line 340
    :goto_1
    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v1, v8

    return v1

    .line 337
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 326
    .end local v8    # "b2":I
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 313
    .end local v0    # "b1":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getEscaped()C
    .locals 3

    .line 233
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 234
    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v0, v1, v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 257
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->getUTF8()C

    move-result v0

    return v0

    .line 253
    :cond_0
    :pswitch_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    return v0

    .line 235
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getUTF8()C
    .locals 8

    .line 264
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->getByte(I)I

    move-result v0

    .line 265
    .local v0, "res":I
    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 267
    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    .line 268
    int-to-char v1, v0

    return v1

    .line 269
    :cond_0
    const/16 v2, 0xc0

    const/16 v3, 0x3f

    if-lt v0, v2, :cond_7

    const/16 v2, 0xf7

    if-gt v0, v2, :cond_7

    .line 272
    const/16 v2, 0xdf

    if-gt v0, v2, :cond_1

    .line 273
    const/4 v2, 0x1

    .line 274
    .local v2, "count":I
    and-int/lit8 v0, v0, 0x1f

    goto :goto_0

    .line 275
    .end local v2    # "count":I
    :cond_1
    const/16 v2, 0xef

    if-gt v0, v2, :cond_2

    .line 276
    const/4 v2, 0x2

    .line 277
    .restart local v2    # "count":I
    and-int/lit8 v0, v0, 0xf

    goto :goto_0

    .line 279
    .end local v2    # "count":I
    :cond_2
    const/4 v2, 0x3

    .line 280
    .restart local v2    # "count":I
    and-int/lit8 v0, v0, 0x7

    .line 284
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_6

    .line 285
    iget v5, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 286
    iget v6, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-eq v5, v6, :cond_5

    iget-object v6, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v6, v6, v5

    const/16 v7, 0x5c

    if-eq v6, v7, :cond_3

    goto :goto_2

    .line 289
    :cond_3
    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 291
    invoke-direct {p0, v5}, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->getByte(I)I

    move-result v5

    .line 292
    .local v5, "b":I
    iget v6, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 293
    and-int/lit16 v6, v5, 0xc0

    if-eq v6, v1, :cond_4

    .line 294
    return v3

    .line 297
    :cond_4
    shl-int/lit8 v6, v0, 0x6

    and-int/lit8 v7, v5, 0x3f

    add-int v0, v6, v7

    .line 284
    nop

    .end local v5    # "b":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 287
    :cond_5
    :goto_2
    return v3

    .line 299
    .end local v4    # "i":I
    :cond_6
    int-to-char v1, v0

    return v1

    .line 301
    .end local v2    # "count":I
    :cond_7
    return v3
.end method

.method private hexAV()Ljava/lang/String;
    .locals 6

    .line 138
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    const-string v3, "Unexpected end of DN: "

    if-ge v1, v2, :cond_7

    .line 143
    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    .line 144
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 149
    :goto_0
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_3

    aget-char v2, v1, v0

    const/16 v4, 0x2c

    if-eq v2, v4, :cond_3

    aget-char v2, v1, v0

    const/16 v4, 0x3b

    if-ne v2, v4, :cond_0

    goto :goto_2

    .line 155
    :cond_0
    aget-char v2, v1, v0

    const/16 v4, 0x20

    if-ne v2, v4, :cond_1

    .line 156
    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    .line 157
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 160
    :goto_1
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    if-ne v1, v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_1

    .line 163
    :cond_1
    aget-char v2, v1, v0

    const/16 v5, 0x41

    if-lt v2, v5, :cond_2

    aget-char v2, v1, v0

    const/16 v5, 0x46

    if-gt v2, v5, :cond_2

    .line 164
    aget-char v2, v1, v0

    add-int/2addr v2, v4

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 167
    :cond_2
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_0

    .line 151
    :cond_3
    :goto_2
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    .line 152
    nop

    .line 172
    :cond_4
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    sub-int/2addr v0, v1

    .line 173
    .local v0, "hexLen":I
    const/4 v2, 0x5

    if-lt v0, v2, :cond_6

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_6

    .line 178
    div-int/lit8 v2, v0, 0x2

    new-array v2, v2, [B

    .line 179
    .local v2, "encoded":[B
    const/4 v3, 0x0

    .local v3, "i":I
    add-int/lit8 v1, v1, 0x1

    .local v1, "p":I
    :goto_3
    array-length v4, v2

    if-ge v3, v4, :cond_5

    .line 180
    invoke-direct {p0, v1}, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->getByte(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 179
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 183
    .end local v1    # "p":I
    .end local v3    # "i":I
    :cond_5
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v4, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    invoke-direct {v1, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 174
    .end local v2    # "encoded":[B
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    .end local v0    # "hexLen":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private nextAT()Ljava/lang/String;
    .locals 6

    .line 51
    :goto_0
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    const/16 v2, 0x20

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_0

    .line 53
    :cond_0
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ne v0, v1, :cond_1

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_1
    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    .line 61
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 62
    :goto_1
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    const/16 v3, 0x3d

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v4, v1, v0

    if-eq v4, v3, :cond_2

    aget-char v1, v1, v0

    if-eq v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_1

    .line 66
    :cond_2
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    const-string v4, "Unexpected end of DN: "

    if-ge v0, v1, :cond_b

    .line 71
    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    .line 75
    iget-object v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v0, v1, v0

    if-ne v0, v2, :cond_5

    .line 76
    :goto_2
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v5, v1, v0

    if-eq v5, v3, :cond_3

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_2

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-eq v1, v0, :cond_4

    goto :goto_3

    .line 80
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_5
    :goto_3
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 88
    :goto_4
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_6

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_4

    .line 93
    :cond_6
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    if-le v0, v2, :cond_a

    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    add-int/lit8 v3, v1, 0x3

    aget-char v3, v0, v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_a

    aget-char v3, v0, v1

    const/16 v4, 0x4f

    if-eq v3, v4, :cond_7

    aget-char v0, v0, v1

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_a

    :cond_7
    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    add-int/lit8 v3, v1, 0x1

    aget-char v3, v0, v3

    const/16 v4, 0x49

    if-eq v3, v4, :cond_8

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x69

    if-ne v0, v1, :cond_a

    :cond_8
    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    add-int/lit8 v3, v1, 0x2

    aget-char v3, v0, v3

    const/16 v4, 0x44

    if-eq v3, v4, :cond_9

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_a

    .line 97
    :cond_9
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    .line 100
    :cond_a
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 67
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private quotedAV()Ljava/lang/String;
    .locals 4

    .line 105
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 106
    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    .line 107
    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    .line 110
    :goto_0
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_3

    .line 114
    iget-object v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    .line 116
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 117
    nop

    .line 130
    :goto_1
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_1

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 118
    :cond_1
    aget-char v2, v1, v0

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_2

    .line 119
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->getEscaped()C

    move-result v2

    aput-char v2, v1, v0

    goto :goto_2

    .line 122
    :cond_2
    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    aget-char v0, v1, v0

    aput-char v0, v1, v2

    .line 124
    :goto_2
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 125
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    goto :goto_0

    .line 111
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public findMostSpecific(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "attributeType"    # Ljava/lang/String;

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 352
    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    .line 353
    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    .line 354
    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->cur:I

    .line 355
    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    .line 357
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "attType":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 359
    return-object v1

    .line 362
    :cond_0
    :goto_0
    const-string v2, ""

    .line 364
    .local v2, "attValue":Ljava/lang/String;
    iget v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v4, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ne v3, v4, :cond_1

    .line 365
    return-object v1

    .line 368
    :cond_1
    iget-object v4, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v3, v4, v3

    const/16 v4, 0x22

    const/16 v5, 0x3b

    const/16 v6, 0x2c

    const/16 v7, 0x2b

    if-eq v3, v4, :cond_4

    const/16 v4, 0x23

    if-eq v3, v4, :cond_3

    if-eq v3, v7, :cond_2

    if-eq v3, v6, :cond_2

    if-eq v3, v5, :cond_2

    .line 381
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->escapedAV()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 379
    :cond_2
    goto :goto_1

    .line 373
    :cond_3
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->hexAV()Ljava/lang/String;

    move-result-object v2

    .line 374
    goto :goto_1

    .line 370
    :cond_4
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->quotedAV()Ljava/lang/String;

    move-result-object v2

    .line 371
    nop

    .line 387
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 388
    return-object v2

    .line 391
    :cond_5
    iget v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v4, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-lt v3, v4, :cond_6

    .line 392
    return-object v1

    .line 395
    :cond_6
    iget-object v4, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v8, v4, v3

    const-string v9, "Malformed DN: "

    if-eq v8, v6, :cond_9

    aget-char v6, v4, v3

    if-ne v6, v5, :cond_7

    goto :goto_2

    .line 396
    :cond_7
    aget-char v3, v4, v3

    if-ne v3, v7, :cond_8

    goto :goto_2

    .line 397
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 400
    :cond_9
    :goto_2
    iget v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 401
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    .line 402
    if-eqz v0, :cond_a

    .line 405
    .end local v2    # "attValue":Ljava/lang/String;
    goto :goto_0

    .line 403
    .restart local v2    # "attValue":Ljava/lang/String;
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
