.class public final Lorg/xbill/DNS/DClass;
.super Ljava/lang/Object;
.source "DClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/DClass$DClassMnemonic;
    }
.end annotation


# static fields
.field public static final ANY:I = 0xff

.field public static final CH:I = 0x3

.field public static final CHAOS:I = 0x3

.field public static final HESIOD:I = 0x4

.field public static final HS:I = 0x4

.field public static final IN:I = 0x1

.field public static final NONE:I = 0xfe

.field private static classes:Lorg/xbill/DNS/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Lorg/xbill/DNS/DClass$DClassMnemonic;

    invoke-direct {v0}, Lorg/xbill/DNS/DClass$DClassMnemonic;-><init>()V

    sput-object v0, Lorg/xbill/DNS/DClass;->classes:Lorg/xbill/DNS/Mnemonic;

    .line 51
    const/4 v1, 0x1

    const-string v2, "IN"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 52
    sget-object v0, Lorg/xbill/DNS/DClass;->classes:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x3

    const-string v2, "CH"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 53
    sget-object v0, Lorg/xbill/DNS/DClass;->classes:Lorg/xbill/DNS/Mnemonic;

    const-string v2, "CHAOS"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->addAlias(ILjava/lang/String;)V

    .line 54
    sget-object v0, Lorg/xbill/DNS/DClass;->classes:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x4

    const-string v2, "HS"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 55
    sget-object v0, Lorg/xbill/DNS/DClass;->classes:Lorg/xbill/DNS/Mnemonic;

    const-string v2, "HESIOD"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->addAlias(ILjava/lang/String;)V

    .line 56
    sget-object v0, Lorg/xbill/DNS/DClass;->classes:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xfe

    const-string v2, "NONE"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 57
    sget-object v0, Lorg/xbill/DNS/DClass;->classes:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xff

    const-string v2, "ANY"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 58
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(I)V
    .locals 1
    .param p0, "i"    # I

    .line 69
    if-ltz p0, :cond_0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    .line 71
    return-void

    .line 70
    :cond_0
    new-instance v0, Lorg/xbill/DNS/InvalidDClassException;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/InvalidDClassException;-><init>(I)V

    throw v0
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    .line 80
    sget-object v0, Lorg/xbill/DNS/DClass;->classes:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static value(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 89
    sget-object v0, Lorg/xbill/DNS/DClass;->classes:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
