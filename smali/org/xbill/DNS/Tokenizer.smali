.class public Lorg/xbill/DNS/Tokenizer;
.super Ljava/lang/Object;
.source "Tokenizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/Tokenizer$TokenizerException;,
        Lorg/xbill/DNS/Tokenizer$Token;
    }
.end annotation


# static fields
.field public static final COMMENT:I = 0x5

.field public static final EOF:I = 0x0

.field public static final EOL:I = 0x1

.field public static final IDENTIFIER:I = 0x3

.field public static final QUOTED_STRING:I = 0x4

.field public static final WHITESPACE:I = 0x2

.field private static delim:Ljava/lang/String;

.field private static quotes:Ljava/lang/String;


# instance fields
.field private current:Lorg/xbill/DNS/Tokenizer$Token;

.field private delimiters:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private is:Ljava/io/PushbackInputStream;

.field private line:I

.field private multiline:I

.field private quoting:Z

.field private sb:Ljava/lang/StringBuffer;

.field private ungottenToken:Z

.field private wantClose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-string v0, " \t\n;()\""

    sput-object v0, Lorg/xbill/DNS/Tokenizer;->delim:Ljava/lang/String;

    .line 35
    const-string v0, "\""

    sput-object v0, Lorg/xbill/DNS/Tokenizer;->quotes:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/io/InputStream;)V

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xbill/DNS/Tokenizer;->wantClose:Z

    .line 177
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Tokenizer;->filename:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    instance-of v0, p1, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    .line 149
    :cond_0
    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/xbill/DNS/Tokenizer;->is:Ljava/io/PushbackInputStream;

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xbill/DNS/Tokenizer;->ungottenToken:Z

    .line 151
    iput v0, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    .line 152
    iput-boolean v0, p0, Lorg/xbill/DNS/Tokenizer;->quoting:Z

    .line 153
    sget-object v0, Lorg/xbill/DNS/Tokenizer;->delim:Ljava/lang/String;

    iput-object v0, p0, Lorg/xbill/DNS/Tokenizer;->delimiters:Ljava/lang/String;

    .line 154
    new-instance v0, Lorg/xbill/DNS/Tokenizer$Token;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer$Token;-><init>(Lorg/xbill/DNS/Tokenizer$1;)V

    iput-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    .line 155
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    .line 156
    const-string v0, "<none>"

    iput-object v0, p0, Lorg/xbill/DNS/Tokenizer;->filename:Ljava/lang/String;

    .line 157
    const/4 v0, 0x1

    iput v0, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 166
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/io/InputStream;)V

    .line 167
    return-void
.end method

.method private _getIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "expected"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 382
    .local v0, "next":Lorg/xbill/DNS/Tokenizer$Token;
    iget v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 384
    iget-object v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    return-object v1

    .line 383
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1
.end method

.method private checkUnbalancedParens()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 220
    iget v0, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    if-gtz v0, :cond_0

    .line 222
    return-void

    .line 221
    :cond_0
    const-string/jumbo v0, "unbalanced parentheses"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method private getChar()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 183
    .local v0, "c":I
    const/16 v1, 0xa

    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    .line 184
    iget-object v2, p0, Lorg/xbill/DNS/Tokenizer;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->read()I

    move-result v2

    .line 185
    .local v2, "next":I
    if-eq v2, v1, :cond_0

    .line 186
    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v3, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 187
    :cond_0
    const/16 v0, 0xa

    .line 189
    .end local v2    # "next":I
    :cond_1
    if-ne v0, v1, :cond_2

    .line 190
    iget v1, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    .line 191
    :cond_2
    return v0
.end method

.method private remainingStrings()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 581
    const/4 v0, 0x0

    .line 583
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v1

    .line 584
    .local v1, "t":Lorg/xbill/DNS/Tokenizer$Token;
    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v2

    if-nez v2, :cond_1

    .line 585
    nop

    .line 590
    .end local v1    # "t":Lorg/xbill/DNS/Tokenizer$Token;
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 591
    if-nez v0, :cond_0

    .line 592
    const/4 v1, 0x0

    return-object v1

    .line 593
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 586
    .restart local v1    # "t":Lorg/xbill/DNS/Tokenizer$Token;
    :cond_1
    if-nez v0, :cond_2

    .line 587
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move-object v0, v2

    .line 588
    :cond_2
    iget-object v2, v1, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 589
    .end local v1    # "t":Lorg/xbill/DNS/Tokenizer$Token;
    goto :goto_0
.end method

.method private skipWhitespace()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    const/4 v0, 0x0

    .line 207
    .local v0, "skipped":I
    :goto_0
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->getChar()I

    move-result v1

    .line 208
    .local v1, "c":I
    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    .line 209
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    iget v2, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    if-gtz v2, :cond_1

    .line 210
    :cond_0
    invoke-direct {p0, v1}, Lorg/xbill/DNS/Tokenizer;->ungetChar(I)V

    .line 211
    return v0

    .line 214
    :cond_1
    nop

    .end local v1    # "c":I
    add-int/lit8 v0, v0, 0x1

    .line 215
    goto :goto_0
.end method

.method private ungetChar(I)V
    .locals 1
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 197
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 199
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 200
    iget v0, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    .line 201
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 718
    iget-boolean v0, p0, Lorg/xbill/DNS/Tokenizer;->wantClose:Z

    if-eqz v0, :cond_0

    .line 720
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    goto :goto_0

    .line 722
    :catch_0
    move-exception v0

    .line 725
    :cond_0
    :goto_0
    return-void
.end method

.method public exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 710
    new-instance v0, Lorg/xbill/DNS/Tokenizer$TokenizerException;

    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer;->filename:Ljava/lang/String;

    iget v2, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    invoke-direct {v0, v1, v2, p1}, Lorg/xbill/DNS/Tokenizer$TokenizerException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    .line 729
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->close()V

    .line 730
    return-void
.end method

.method public get()Lorg/xbill/DNS/Tokenizer$Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    return-object v0
.end method

.method public get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;
    .locals 12
    .param p1, "wantWhitespace"    # Z
    .param p2, "wantComment"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    iget-boolean v0, p0, Lorg/xbill/DNS/Tokenizer;->ungottenToken:Z

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 239
    iput-boolean v4, p0, Lorg/xbill/DNS/Tokenizer;->ungottenToken:Z

    .line 240
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    iget v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-ne v0, v2, :cond_0

    .line 241
    if-eqz p1, :cond_3

    .line 242
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    return-object v0

    .line 243
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    iget v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-ne v0, v1, :cond_1

    .line 244
    if-eqz p2, :cond_3

    .line 245
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    return-object v0

    .line 247
    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    iget v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-ne v0, v3, :cond_2

    .line 248
    iget v0, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    .line 249
    :cond_2
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    return-object v0

    .line 252
    :cond_3
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->skipWhitespace()I

    move-result v0

    .line 253
    .local v0, "skipped":I
    const/4 v5, 0x0

    if-lez v0, :cond_4

    if-eqz p1, :cond_4

    .line 254
    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    invoke-static {v1, v2, v5}, Lorg/xbill/DNS/Tokenizer$Token;->access$100(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v1

    return-object v1

    .line 255
    :cond_4
    const/4 v2, 0x3

    .line 256
    .local v2, "type":I
    iget-object v6, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 258
    :goto_0
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->getChar()I

    move-result v6

    .line 259
    .local v6, "c":I
    const/16 v7, 0xa

    const/4 v8, -0x1

    if-eq v6, v8, :cond_a

    iget-object v9, p0, Lorg/xbill/DNS/Tokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v9, v8, :cond_5

    goto :goto_2

    .line 321
    :cond_5
    const/16 v9, 0x5c

    if-ne v6, v9, :cond_7

    .line 322
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->getChar()I

    move-result v6

    .line 323
    if-eq v6, v8, :cond_6

    .line 325
    iget-object v7, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 324
    :cond_6
    const-string/jumbo v1, "unterminated escape sequence"

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1

    .line 326
    :cond_7
    iget-boolean v8, p0, Lorg/xbill/DNS/Tokenizer;->quoting:Z

    if-eqz v8, :cond_9

    if-eq v6, v7, :cond_8

    goto :goto_1

    .line 327
    :cond_8
    const-string v1, "newline in quoted string"

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1

    .line 329
    :cond_9
    :goto_1
    iget-object v7, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    int-to-char v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 260
    :cond_a
    :goto_2
    if-ne v6, v8, :cond_d

    .line 261
    iget-boolean v1, p0, Lorg/xbill/DNS/Tokenizer;->quoting:Z

    if-nez v1, :cond_c

    .line 264
    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_b

    .line 265
    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    invoke-static {v1, v4, v5}, Lorg/xbill/DNS/Tokenizer$Token;->access$100(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v1

    return-object v1

    .line 267
    :cond_b
    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-static {v1, v2, v3}, Lorg/xbill/DNS/Tokenizer$Token;->access$100(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v1

    return-object v1

    .line 262
    :cond_c
    const-string v1, "EOF in quoted string"

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1

    .line 269
    :cond_d
    iget-object v9, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    const/4 v10, 0x4

    if-nez v9, :cond_1a

    if-eq v2, v10, :cond_1a

    .line 270
    const/16 v9, 0x28

    if-ne v6, v9, :cond_e

    .line 271
    iget v7, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    add-int/2addr v7, v3

    iput v7, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    .line 272
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->skipWhitespace()I

    .line 273
    goto :goto_0

    .line 274
    :cond_e
    const/16 v9, 0x29

    if-ne v6, v9, :cond_10

    .line 275
    iget v7, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    if-lez v7, :cond_f

    .line 279
    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    .line 280
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->skipWhitespace()I

    .line 281
    goto/16 :goto_0

    .line 276
    :cond_f
    const-string v1, "invalid close parenthesis"

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1

    .line 282
    :cond_10
    const/16 v9, 0x22

    if-ne v6, v9, :cond_12

    .line 283
    iget-boolean v7, p0, Lorg/xbill/DNS/Tokenizer;->quoting:Z

    if-nez v7, :cond_11

    .line 284
    iput-boolean v3, p0, Lorg/xbill/DNS/Tokenizer;->quoting:Z

    .line 285
    sget-object v7, Lorg/xbill/DNS/Tokenizer;->quotes:Ljava/lang/String;

    iput-object v7, p0, Lorg/xbill/DNS/Tokenizer;->delimiters:Ljava/lang/String;

    .line 286
    const/4 v2, 0x4

    goto/16 :goto_0

    .line 288
    :cond_11
    iput-boolean v4, p0, Lorg/xbill/DNS/Tokenizer;->quoting:Z

    .line 289
    sget-object v7, Lorg/xbill/DNS/Tokenizer;->delim:Ljava/lang/String;

    iput-object v7, p0, Lorg/xbill/DNS/Tokenizer;->delimiters:Ljava/lang/String;

    .line 290
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->skipWhitespace()I

    .line 292
    goto/16 :goto_0

    .line 293
    :cond_12
    if-ne v6, v7, :cond_13

    .line 294
    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    invoke-static {v1, v3, v5}, Lorg/xbill/DNS/Tokenizer$Token;->access$100(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v1

    return-object v1

    .line 295
    :cond_13
    const/16 v9, 0x3b

    if-ne v6, v9, :cond_19

    .line 297
    :goto_3
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->getChar()I

    move-result v6

    .line 298
    if-eq v6, v7, :cond_15

    if-ne v6, v8, :cond_14

    .line 299
    goto :goto_4

    .line 300
    :cond_14
    iget-object v9, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    int-to-char v11, v6

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 302
    :cond_15
    :goto_4
    if-eqz p2, :cond_16

    .line 303
    invoke-direct {p0, v6}, Lorg/xbill/DNS/Tokenizer;->ungetChar(I)V

    .line 304
    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    iget-object v4, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-static {v3, v1, v4}, Lorg/xbill/DNS/Tokenizer$Token;->access$100(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v1

    return-object v1

    .line 305
    :cond_16
    if-ne v6, v8, :cond_17

    if-eq v2, v10, :cond_17

    .line 308
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->checkUnbalancedParens()V

    .line 309
    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    invoke-static {v1, v4, v5}, Lorg/xbill/DNS/Tokenizer$Token;->access$100(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v1

    return-object v1

    .line 310
    :cond_17
    iget v7, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    if-lez v7, :cond_18

    .line 311
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->skipWhitespace()I

    .line 312
    iget-object v7, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 313
    goto/16 :goto_0

    .line 315
    :cond_18
    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    invoke-static {v1, v3, v5}, Lorg/xbill/DNS/Tokenizer$Token;->access$100(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v1

    return-object v1

    .line 317
    :cond_19
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 319
    :cond_1a
    invoke-direct {p0, v6}, Lorg/xbill/DNS/Tokenizer;->ungetChar(I)V

    .line 320
    nop

    .line 331
    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_1b

    if-eq v2, v10, :cond_1b

    .line 332
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->checkUnbalancedParens()V

    .line 333
    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    invoke-static {v1, v4, v5}, Lorg/xbill/DNS/Tokenizer$Token;->access$100(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v1

    return-object v1

    .line 335
    :cond_1b
    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-static {v1, v2, v3}, Lorg/xbill/DNS/Tokenizer$Token;->access$100(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v1

    return-object v1
.end method

.method public getAddress(I)Ljava/net/InetAddress;
    .locals 3
    .param p1, "family"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    const-string v0, "an address"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, "next":Ljava/lang/String;
    :try_start_0
    invoke-static {v0, p1}, Lorg/xbill/DNS/Address;->getByAddress(Ljava/lang/String;I)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 558
    :catch_0
    move-exception v1

    .line 559
    .local v1, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2
.end method

.method public getAddressBytes(I)[B
    .locals 4
    .param p1, "family"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    const-string v0, "an address"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "next":Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v1

    .line 539
    .local v1, "bytes":[B
    if-eqz v1, :cond_0

    .line 541
    return-object v1

    .line 540
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2
.end method

.method public getBase32String(Lorg/xbill/DNS/utils/base32;)[B
    .locals 3
    .param p1, "b32"    # Lorg/xbill/DNS/utils/base32;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 696
    const-string v0, "a base32 string"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 697
    .local v0, "next":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/utils/base32;->fromString(Ljava/lang/String;)[B

    move-result-object v1

    .line 698
    .local v1, "array":[B
    if-eqz v1, :cond_0

    .line 700
    return-object v1

    .line 699
    :cond_0
    const-string v2, "invalid base32 encoding"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2
.end method

.method public getBase64()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 631
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->getBase64(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public getBase64(Z)[B
    .locals 3
    .param p1, "required"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->remainingStrings()Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 610
    if-nez p1, :cond_0

    .line 613
    const/4 v1, 0x0

    return-object v1

    .line 611
    :cond_0
    const-string v1, "expected base64 encoded string"

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1

    .line 615
    :cond_1
    invoke-static {v0}, Lorg/xbill/DNS/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v1

    .line 616
    .local v1, "array":[B
    if-eqz v1, :cond_2

    .line 618
    return-object v1

    .line 617
    :cond_2
    const-string v2, "invalid base64 encoding"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2
.end method

.method public getEOL()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 570
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 571
    .local v0, "next":Lorg/xbill/DNS/Tokenizer$Token;
    iget v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 572
    :cond_0
    const-string v1, "expected EOL or EOF"

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1

    .line 574
    :cond_1
    :goto_0
    return-void
.end method

.method public getHex()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 669
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->getHex(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public getHex(Z)[B
    .locals 3
    .param p1, "required"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 646
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->remainingStrings()Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 648
    if-nez p1, :cond_0

    .line 651
    const/4 v1, 0x0

    return-object v1

    .line 649
    :cond_0
    const-string v1, "expected hex encoded string"

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1

    .line 653
    :cond_1
    invoke-static {v0}, Lorg/xbill/DNS/utils/base16;->fromString(Ljava/lang/String;)[B

    move-result-object v1

    .line 654
    .local v1, "array":[B
    if-eqz v1, :cond_2

    .line 656
    return-object v1

    .line 655
    :cond_2
    const-string v2, "invalid hex encoding"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2
.end method

.method public getHexString()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 680
    const-string v0, "a hex string"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, "next":Ljava/lang/String;
    invoke-static {v0}, Lorg/xbill/DNS/utils/base16;->fromString(Ljava/lang/String;)[B

    move-result-object v1

    .line 682
    .local v1, "array":[B
    if-eqz v1, :cond_0

    .line 684
    return-object v1

    .line 683
    :cond_0
    const-string v2, "invalid hex encoding"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    const-string v0, "an identifier"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLong()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    const-string v0, "an integer"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "next":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    const-string v2, "expected an integer"

    if-eqz v1, :cond_0

    .line 411
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 412
    :catch_0
    move-exception v1

    .line 413
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 409
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1
.end method

.method public getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 3
    .param p1, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 513
    const-string v0, "a name"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, "next":Ljava/lang/String;
    :try_start_0
    invoke-static {v0, p1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 516
    .local v1, "name":Lorg/xbill/DNS/Name;
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 518
    return-object v1

    .line 517
    :cond_0
    new-instance v2, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v2, v1}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    .end local v0    # "next":Ljava/lang/String;
    .end local p0    # "this":Lorg/xbill/DNS/Tokenizer;
    .end local p1    # "origin":Lorg/xbill/DNS/Name;
    throw v2
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    .end local v1    # "name":Lorg/xbill/DNS/Name;
    .restart local v0    # "next":Ljava/lang/String;
    .restart local p0    # "this":Lorg/xbill/DNS/Tokenizer;
    .restart local p1    # "origin":Lorg/xbill/DNS/Name;
    :catch_0
    move-exception v1

    .line 521
    .local v1, "e":Lorg/xbill/DNS/TextParseException;
    invoke-virtual {v1}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2
.end method

.method public getString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 373
    .local v0, "next":Lorg/xbill/DNS/Tokenizer$Token;
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    return-object v1

    .line 374
    :cond_0
    const-string v1, "expected a string"

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1
.end method

.method public getTTL()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    const-string v0, "a TTL value"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "next":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 478
    :catch_0
    move-exception v1

    .line 479
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "expected a TTL value"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2
.end method

.method public getTTLLike()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 492
    const-string v0, "a TTL-like value"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "next":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Lorg/xbill/DNS/TTL;->parse(Ljava/lang/String;Z)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 496
    :catch_0
    move-exception v1

    .line 497
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "expected a TTL-like value"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2
.end method

.method public getUInt16()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->getLong()J

    move-result-wide v0

    .line 444
    .local v0, "l":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0xffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 446
    long-to-int v2, v0

    return v2

    .line 445
    :cond_0
    const-string v2, "expected an 16 bit unsigned integer"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2
.end method

.method public getUInt32()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->getLong()J

    move-result-wide v0

    .line 428
    .local v0, "l":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide v2, 0xffffffffL

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 430
    return-wide v0

    .line 429
    :cond_0
    const-string v2, "expected an 32 bit unsigned integer"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2
.end method

.method public getUInt8()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->getLong()J

    move-result-wide v0

    .line 460
    .local v0, "l":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0xff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 462
    long-to-int v2, v0

    return v2

    .line 461
    :cond_0
    const-string v2, "expected an 8 bit unsigned integer"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2
.end method

.method public unget()V
    .locals 2

    .line 356
    iget-boolean v0, p0, Lorg/xbill/DNS/Tokenizer;->ungottenToken:Z

    if-nez v0, :cond_1

    .line 359
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    iget v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 360
    iget v0, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    .line 361
    :cond_0
    iput-boolean v1, p0, Lorg/xbill/DNS/Tokenizer;->ungottenToken:Z

    .line 362
    return-void

    .line 357
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot unget multiple tokens"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
