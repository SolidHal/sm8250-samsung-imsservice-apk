.class public final Lorg/xbill/DNS/Opcode;
.super Ljava/lang/Object;
.source "Opcode.java"


# static fields
.field public static final IQUERY:I = 0x1

.field public static final NOTIFY:I = 0x4

.field public static final QUERY:I = 0x0

.field public static final STATUS:I = 0x2

.field public static final UPDATE:I = 0x5

.field private static opcodes:Lorg/xbill/DNS/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 30
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    const-string v1, "DNS Opcode"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/Opcode;->opcodes:Lorg/xbill/DNS/Mnemonic;

    .line 34
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setMaximum(I)V

    .line 35
    sget-object v0, Lorg/xbill/DNS/Opcode;->opcodes:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "RESERVED"

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setPrefix(Ljava/lang/String;)V

    .line 36
    sget-object v0, Lorg/xbill/DNS/Opcode;->opcodes:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    .line 38
    sget-object v0, Lorg/xbill/DNS/Opcode;->opcodes:Lorg/xbill/DNS/Mnemonic;

    const/4 v3, 0x0

    const-string v4, "QUERY"

    invoke-virtual {v0, v3, v4}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 39
    sget-object v0, Lorg/xbill/DNS/Opcode;->opcodes:Lorg/xbill/DNS/Mnemonic;

    const-string v3, "IQUERY"

    invoke-virtual {v0, v1, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 40
    sget-object v0, Lorg/xbill/DNS/Opcode;->opcodes:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "STATUS"

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 41
    sget-object v0, Lorg/xbill/DNS/Opcode;->opcodes:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x4

    const-string v2, "NOTIFY"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 42
    sget-object v0, Lorg/xbill/DNS/Opcode;->opcodes:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x5

    const-string v2, "UPDATE"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    .line 51
    sget-object v0, Lorg/xbill/DNS/Opcode;->opcodes:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static value(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 57
    sget-object v0, Lorg/xbill/DNS/Opcode;->opcodes:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
