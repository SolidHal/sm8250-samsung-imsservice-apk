.class public Lorg/xbill/DNS/AFSDBRecord;
.super Lorg/xbill/DNS/U16NameBase;
.source "AFSDBRecord.java"


# static fields
.field private static final serialVersionUID:J = 0x2a1c48785caebc65L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/xbill/DNS/U16NameBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJILorg/xbill/DNS/Name;)V
    .locals 10
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "subtype"    # I
    .param p6, "host"    # Lorg/xbill/DNS/Name;

    .line 31
    const/16 v2, 0x12

    const-string/jumbo v7, "subtype"

    const-string v9, "host"

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
.method public getHost()Lorg/xbill/DNS/Name;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/xbill/DNS/AFSDBRecord;->getNameField()Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .line 21
    new-instance v0, Lorg/xbill/DNS/AFSDBRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/AFSDBRecord;-><init>()V

    return-object v0
.end method

.method public getSubtype()I
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/xbill/DNS/AFSDBRecord;->getU16Field()I

    move-result v0

    return v0
.end method
