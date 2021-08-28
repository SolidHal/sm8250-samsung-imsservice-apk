.class public Lcom/sec/internal/log/IndentingPrintWriter;
.super Ljava/io/PrintWriter;
.source "IndentingPrintWriter.java"


# instance fields
.field private mCurrentIndent:[C

.field private mCurrentLength:I

.field private mEmptyLine:Z

.field private mIndentBuilder:Ljava/lang/StringBuilder;

.field private mSingleChar:[C

.field private final mSingleIndent:Ljava/lang/String;

.field private final mWrapLength:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "singleIndent"    # Ljava/lang/String;

    .line 56
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/log/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;I)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "singleIndent"    # Ljava/lang/String;
    .param p3, "wrapLength"    # I

    .line 60
    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mEmptyLine:Z

    .line 53
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mSingleChar:[C

    .line 61
    iput-object p2, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    .line 62
    iput p3, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mWrapLength:I

    .line 63
    return-void
.end method

.method private maybeWriteIndent()V
    .locals 3

    .line 138
    iget-boolean v0, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mEmptyLine:Z

    if-eqz v0, :cond_1

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mEmptyLine:Z

    .line 140
    iget-object v1, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mCurrentIndent:[C

    if-nez v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mCurrentIndent:[C

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mCurrentIndent:[C

    array-length v2, v1

    invoke-super {p0, v1, v0, v2}, Ljava/io/PrintWriter;->write([CII)V

    .line 147
    :cond_1
    return-void
.end method


# virtual methods
.method public decreaseIndent()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mCurrentIndent:[C

    .line 73
    return-void
.end method

.method public increaseIndent()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mCurrentIndent:[C

    .line 68
    return-void
.end method

.method public println()V
    .locals 1

    .line 77
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/internal/log/IndentingPrintWriter;->write(I)V

    .line 78
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "c"    # I

    .line 82
    iget-object v0, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mSingleChar:[C

    int-to-char v1, p1

    const/4 v2, 0x0

    aput-char v1, v0, v2

    .line 83
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/sec/internal/log/IndentingPrintWriter;->write([CII)V

    .line 84
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 88
    new-array v0, p3, [C

    .line 89
    .local v0, "buf":[C
    sub-int v1, p3, p2

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 90
    invoke-virtual {p0, v0, v2, p3}, Lcom/sec/internal/log/IndentingPrintWriter;->write([CII)V

    .line 91
    return-void
.end method

.method public write([CII)V
    .locals 10
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 95
    iget-object v0, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 96
    .local v0, "indentLength":I
    add-int v1, p2, p3

    .line 97
    .local v1, "bufferEnd":I
    move v2, p2

    .line 98
    .local v2, "lineStart":I
    move v3, p2

    .line 101
    .local v3, "lineEnd":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 102
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "lineEnd":I
    .local v4, "lineEnd":I
    aget-char v3, p1, v3

    .line 103
    .local v3, "ch":C
    iget v5, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mCurrentLength:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mCurrentLength:I

    .line 104
    const/4 v5, 0x0

    const/16 v7, 0xa

    if-ne v3, v7, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/sec/internal/log/IndentingPrintWriter;->maybeWriteIndent()V

    .line 106
    sub-int v8, v4, v2

    invoke-super {p0, p1, v2, v8}, Ljava/io/PrintWriter;->write([CII)V

    .line 107
    move v2, v4

    .line 108
    iput-boolean v6, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mEmptyLine:Z

    .line 109
    iput v5, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mCurrentLength:I

    .line 113
    :cond_0
    iget v8, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mWrapLength:I

    if-lez v8, :cond_2

    iget v9, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mCurrentLength:I

    sub-int/2addr v8, v0

    if-lt v9, v8, :cond_2

    .line 114
    iget-boolean v8, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mEmptyLine:Z

    if-nez v8, :cond_1

    .line 116
    invoke-super {p0, v7}, Ljava/io/PrintWriter;->write(I)V

    .line 117
    iput-boolean v6, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mEmptyLine:Z

    .line 118
    sub-int v5, v4, v2

    iput v5, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mCurrentLength:I

    goto :goto_1

    .line 121
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/log/IndentingPrintWriter;->maybeWriteIndent()V

    .line 122
    sub-int v8, v4, v2

    invoke-super {p0, p1, v2, v8}, Ljava/io/PrintWriter;->write([CII)V

    .line 123
    invoke-super {p0, v7}, Ljava/io/PrintWriter;->write(I)V

    .line 124
    iput-boolean v6, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mEmptyLine:Z

    .line 125
    move v2, v4

    .line 126
    iput v5, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mCurrentLength:I

    .line 129
    .end local v3    # "ch":C
    :cond_2
    :goto_1
    move v3, v4

    goto :goto_0

    .line 131
    .end local v4    # "lineEnd":I
    .local v3, "lineEnd":I
    :cond_3
    if-eq v2, v3, :cond_4

    .line 132
    invoke-direct {p0}, Lcom/sec/internal/log/IndentingPrintWriter;->maybeWriteIndent()V

    .line 133
    sub-int v4, v3, v2

    invoke-super {p0, p1, v2, v4}, Ljava/io/PrintWriter;->write([CII)V

    .line 135
    :cond_4
    return-void
.end method
