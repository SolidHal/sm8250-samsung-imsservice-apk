.class public Lorg/xbill/DNS/KEYRecord$Protocol;
.super Ljava/lang/Object;
.source "KEYRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/KEYRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Protocol"
.end annotation


# static fields
.field public static final ANY:I = 0xff

.field public static final DNSSEC:I = 0x3

.field public static final EMAIL:I = 0x2

.field public static final IPSEC:I = 0x4

.field public static final NONE:I = 0x0

.field public static final TLS:I = 0x1

.field private static protocols:Lorg/xbill/DNS/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 46
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    const-string v1, "KEY protocol"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/KEYRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 50
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setMaximum(I)V

    .line 51
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    .line 53
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/4 v4, 0x0

    const-string v5, "NONE"

    invoke-virtual {v0, v4, v5}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 54
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v4, "TLS"

    invoke-virtual {v0, v3, v4}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 55
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v3, "EMAIL"

    invoke-virtual {v0, v2, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 56
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/4 v2, 0x3

    const-string v3, "DNSSEC"

    invoke-virtual {v0, v2, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 57
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/4 v2, 0x4

    const-string v3, "IPSEC"

    invoke-virtual {v0, v2, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 58
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string v2, "ANY"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 59
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 66
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static value(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 77
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
