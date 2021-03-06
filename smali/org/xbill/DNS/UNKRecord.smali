.class public Lorg/xbill/DNS/UNKRecord;
.super Lorg/xbill/DNS/Record;
.source "UNKRecord.java"


# static fields
.field private static final serialVersionUID:J = -0x3a3299cda79a9f63L


# instance fields
.field private data:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/xbill/DNS/UNKRecord;->data:[B

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .line 24
    new-instance v0, Lorg/xbill/DNS/UNKRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/UNKRecord;-><init>()V

    return-object v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 1
    .param p1, "st"    # Lorg/xbill/DNS/Tokenizer;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    const-string v0, "invalid unknown RR encoding"

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 1
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/UNKRecord;->data:[B

    .line 30
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/xbill/DNS/UNKRecord;->data:[B

    invoke-static {v0}, Lorg/xbill/DNS/UNKRecord;->unknownToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 1
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .line 51
    iget-object v0, p0, Lorg/xbill/DNS/UNKRecord;->data:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 52
    return-void
.end method
