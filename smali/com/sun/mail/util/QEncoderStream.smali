.class public Lcom/sun/mail/util/QEncoderStream;
.super Lcom/sun/mail/util/QPEncoderStream;
.source "QEncoderStream.java"


# static fields
.field private static TEXT_SPECIALS:Ljava/lang/String;

.field private static WORD_SPECIALS:Ljava/lang/String;


# instance fields
.field private specials:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-string v0, "=_?\"#$%&\'(),.:;<>@[\\]^`{|}~"

    sput-object v0, Lcom/sun/mail/util/QEncoderStream;->WORD_SPECIALS:Ljava/lang/String;

    .line 56
    const-string v0, "=_?"

    sput-object v0, Lcom/sun/mail/util/QEncoderStream;->TEXT_SPECIALS:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "encodingWord"    # Z

    .line 65
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/QPEncoderStream;-><init>(Ljava/io/OutputStream;I)V

    .line 72
    if-eqz p2, :cond_0

    sget-object v0, Lcom/sun/mail/util/QEncoderStream;->WORD_SPECIALS:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sun/mail/util/QEncoderStream;->TEXT_SPECIALS:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/sun/mail/util/QEncoderStream;->specials:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public static encodedLength([BZ)I
    .locals 5
    .param p0, "b"    # [B
    .param p1, "encodingWord"    # Z

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "len":I
    if-eqz p1, :cond_0

    sget-object v1, Lcom/sun/mail/util/QEncoderStream;->WORD_SPECIALS:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sun/mail/util/QEncoderStream;->TEXT_SPECIALS:Ljava/lang/String;

    .line 97
    .local v1, "specials":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, p0

    if-lt v2, v3, :cond_1

    .line 105
    .end local v2    # "i":I
    return v0

    .line 98
    .restart local v2    # "i":I
    :cond_1
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 99
    .local v3, "c":I
    const/16 v4, 0x20

    if-lt v3, v4, :cond_3

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_2

    goto :goto_2

    .line 103
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 101
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x3

    .line 97
    .end local v3    # "c":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public write(I)V
    .locals 2
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    and-int/lit16 p1, p1, 0xff

    .line 82
    const/4 v0, 0x0

    const/16 v1, 0x20

    if-ne p1, v1, :cond_0

    .line 83
    const/16 v1, 0x5f

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/util/QEncoderStream;->output(IZ)V

    goto :goto_1

    .line 84
    :cond_0
    if-lt p1, v1, :cond_2

    const/16 v1, 0x7f

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lcom/sun/mail/util/QEncoderStream;->specials:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/util/QEncoderStream;->output(IZ)V

    goto :goto_1

    .line 86
    :cond_2
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/util/QEncoderStream;->output(IZ)V

    .line 89
    :goto_1
    return-void
.end method
