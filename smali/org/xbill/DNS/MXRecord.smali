.class public Lorg/xbill/DNS/MXRecord;
.super Lorg/xbill/DNS/U16NameBase;
.source "MXRecord.java"


# static fields
.field private static final serialVersionUID:J = 0x2873987899e42ea2L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/xbill/DNS/U16NameBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJILorg/xbill/DNS/Name;)V
    .locals 10
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "priority"    # I
    .param p6, "target"    # Lorg/xbill/DNS/Name;

    .line 30
    const/16 v2, 0xf

    const-string/jumbo v7, "priority"

    const-string/jumbo v9, "target"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lorg/xbill/DNS/U16NameBase;-><init>(Lorg/xbill/DNS/Name;IIJILjava/lang/String;Lorg/xbill/DNS/Name;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getAdditionalName()Lorg/xbill/DNS/Name;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lorg/xbill/DNS/MXRecord;->getNameField()Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .line 19
    new-instance v0, Lorg/xbill/DNS/MXRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/MXRecord;-><init>()V

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/xbill/DNS/MXRecord;->getU16Field()I

    move-result v0

    return v0
.end method

.method public getTarget()Lorg/xbill/DNS/Name;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/xbill/DNS/MXRecord;->getNameField()Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 1
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .line 48
    iget v0, p0, Lorg/xbill/DNS/MXRecord;->u16Field:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 49
    iget-object v0, p0, Lorg/xbill/DNS/MXRecord;->nameField:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 50
    return-void
.end method
