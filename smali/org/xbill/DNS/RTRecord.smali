.class public Lorg/xbill/DNS/RTRecord;
.super Lorg/xbill/DNS/U16NameBase;
.source "RTRecord.java"


# static fields
.field private static final serialVersionUID:J = -0x2c7ec425ddcb0e52L


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
    .param p5, "preference"    # I
    .param p6, "intermediateHost"    # Lorg/xbill/DNS/Name;

    .line 32
    const/16 v2, 0x15

    const-string/jumbo v7, "preference"

    const-string v9, "intermediateHost"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lorg/xbill/DNS/U16NameBase;-><init>(Lorg/xbill/DNS/Name;IIJILjava/lang/String;Lorg/xbill/DNS/Name;Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getIntermediateHost()Lorg/xbill/DNS/Name;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/xbill/DNS/RTRecord;->getNameField()Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .line 19
    new-instance v0, Lorg/xbill/DNS/RTRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/RTRecord;-><init>()V

    return-object v0
.end method

.method public getPreference()I
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/xbill/DNS/RTRecord;->getU16Field()I

    move-result v0

    return v0
.end method
