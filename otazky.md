---
header-includes: \usepackage{amsmath}
---

\title{VaPL}

\maketitle

# Pojmy

## (P1) Model ve výrokové logice, pravdivostní funkce výroku

### Model jazyka

Model jazyka je libovolné ohodnocení $\upsilon: \mathbb{P} \rightarrow \{ 0, 1 \}$.

### Model teorie

Model teorie je ohodnocení $\upsilon \models T$.
Pro každý $\varphi \in T$ je $\upsilon$ platným ohodnocením $\varphi$, tedy $f_{\varphi, \mathbb{P}}(\upsilon) = 1$.

### Pravdivostní funkce

Pravdivostní funkce výroku $\varphi$ v jazyce $\mathbb{P}$ je $f_{\varphi, \mathbb{P}}: \{ 0, 1 \}^{|\mathbb{P}|} \rightarrow \{ 0, 1 \}:$

- $\varphi$ je *i*-tý prvovýrok z $\mathbb{P}$ $\Rightarrow$ $f_{\varphi, \mathbb{P}}(x_0, ..., x_{n - 1}) = x_i$
- $\varphi = (\neg\varphi')$ $\Rightarrow$ $f_{\varphi, \mathbb{P}}(x_0, ..., x_{n - 1}) = f_{\neg}(f_{\varphi', \mathbb{P}}(x_0, ..., x_{n - 1}))$
- $\varphi = (\varphi' \square \varphi'')$ a $\square \in \{ \land, \lor, \rightarrow, \leftrightarrow \}$ $\Rightarrow$ 
$$f_{\varphi, \mathbb{P}}(x_0, ..., x_{n - 1}) = f_{\square}(f_{\varphi', \mathbb{P}}(x_0, ..., x_{n - 1}), f_{\varphi'', \mathbb{P}}(x_0, ..., x_{n - 1}))$$

\pagebreak

## (P2) Sémantické pojmy (pravdivost, lživost, nezávislost, splnitelnost) v logice, vzhledem k teorii

Výrok $\varphi$ v jazyce $\mathbb{P}$ je:

- pravdivý, tautologie, platí v logice ($\models \varphi$),
pokud platí v každém modelu jazyka ($M_{\mathbb{P}}(\varphi) = M_{\mathbb{P}}$)
- lživý, sporný, pokud nemá žádný model ($M_{\mathbb{P}}(\varphi) = \emptyset$)
- nezávislý, pokud platí v nějakém modelu a v nějakém jiném modelu neplatí, tedy není pravdivý ani lživý
($\emptyset \subset M_{\mathbb{P}}(\varphi) \subset M_{\mathbb{P}}$)
- splnitelný, pokud má nějaký model, tedy není lživý ($M_{\mathbb{P}}(\varphi) \neq \emptyset$)

Výrok $\varphi$ je v teorii *T*:

- pravdivý, důsledek *T*, platí v *T* ($T \models \varphi$),
pokud platí v každém modelu teorie *T* ($M_{\mathbb{P}}(T) \subseteq M_{\mathbb{P}}(\varphi)$)
- lživý v *T*, sporný v *T*, pokud neplatí v žádném modelu *T* ($M_{\mathbb{P}}(T, \varphi) = \emptyset$)
- nezávislý v *T*, pokud platí v nějakém modelu *T* a v nějakém jiném modelu *T* neplatí,
tedy není pravdivý ani lživý v *T*
($\emptyset \subset M_{\mathbb{P}}(T, \varphi) \subset M_{\mathbb{P}}(T)$)
- splnitelný v *T*, konzistentní s *T*, pokud platí v nějakém modelu *T*,
tedy není lživý v *T* ($M_{\mathbb{P}}(\varphi) \neq \emptyset$)

\pagebreak

## (P3) Ekvivalence výroků, resp. výrokových teorií

Výroky jsou ekvivalentní v logice, pokud $M_{\mathbb{P}}(\varphi) = M_{\mathbb{P}}(\psi)$.

Výroky jsou ekvivalentní v teorii (*T*-ekvivalentní), pokud 
$$M_{\mathbb{P}}(T, \varphi) = M_{\mathbb{P}}(T, \psi) \equiv \varphi \sim_T \psi$$
$$M_{\mathbb{P}}(T, \varphi) \equiv M_{\mathbb{P}}(T \cup \{ \psi \}) = M_{\mathbb{P}}(T) \cap M_{\mathbb{P}}(\varphi)$$

\pagebreak

## (P4) Sémantické pojmy o teorii (sporná, bezesporná, kompletní, splnitelná)

Vlastnosti teorie *T* v jazyce $\mathbb{P}$:

- sporná, plátí v ní $\bot$ $\Leftrightarrow$ nemá žádný model $\Leftrightarrow$ platí v ní všechny výroky
- bezesporná (splnitelná), není sporná, tedy má nějaký model
- kompletní, není sporná a každý výrok je v ní pravdivý nebo lživý $\Leftrightarrow$ má právě jeden model

\pagebreak

## (P5) Extenze teorie (jednoduchá, konzervativní), odpovídajíí sémantická kritéria

Mějme teorii *T* v jazyce $\mathbb{P}$.
Extenze teorie *T* je libovolná teorie $T'$ v jazyce $\mathbb{P}' \supseteq \mathbb{P}$
splňující $Csq_{\mathbb{P}}(T) \subseteq Csq_{\mathbb{P}'}(T')$.

Extenze je:

- jednoduchá, pokud $\mathbb{P}' = \mathbb{P}$
- konzervativní, pokud $Csq_{\mathbb{P}}(T) = Csq_{\mathbb{P}}(T') = Csq_{\mathbb{P}'}(T') \cap VF_{\mathbb{P}}$

\pagebreak

## (P6) Tablo z teorie, tablo důkaz.

### Tablo ve výrokové logice

Konečné tablo z teorie *T* je uspořádaný, položkami označkovaný strom
zkonstruovaný v konečně mnoha krocích dle následující pravidel:

- jednoprvkový strom označkovaný libovolnou položkou je tablo z teorie *T*
- pro libovolnou položku *P* na libovolné větvi *V*
můžeme na konec větve *V* připojit atomické tablo pro položku *P*
- na konec libovolné větve můžeme připojit položku T$\alpha$ pro libovolný axiom $\alpha \in T$

Tablo je buď konečné nebo nekonečné, ale vzniklo ve spočetně mnoha krocích.

Tablo pro položku *P* je tablo s položkou *P* v kořeni.

### Tablo důkaz ve výrokové logice

Tablo důkaz výroku $\varphi$ z *T* je sporné tablo z teorie *T* s položkou F$\varphi$ v kořeni.
Pokud existuje, je $\varphi$ (tablo) dokazatelný z *T* ($T \vdash \varphi$).

Tablo zamítnutí výroku $\varphi$ z *T* je sporné tablo z teorie *T* s položkou T$\varphi$ v kořeni.
Pokud existuje, je $\varphi$ (tablo) zamítnutelný z *T* ($T \vdash \neg\varphi$).

Tablo je sporné, pokud je každá jeho větev sporná.

Větev je sporná, pokud obsahuje položky T$\psi$ a F$\psi$ pro nějaký výrok $\psi$.
Jinak je bezesporná.

Tablo je dokončené, pokud je každá jeho větev dokončená.

Větev je dokončená, pokud:

- je buď sporná
- nebo je každá její položka redukovaná a zároveň obsahuje položku T$\alpha$ pro každý axiom $\alpha \in T$

Položka je redukovaná, pokud:

- je buď ve tvaru T*p* resp. F*p* pro nějakou výrokovou proměnnou $p \in \mathbb{P}$
- nebo při konstrukci tabla již došlo k jejímu rozvoji na *V*,
tedy vyskytuje se na *V* jako kořen atomického tabla

### Tablo v predikátové logice

Oproti tablu ve výrokové logice máme ještě atomická tabla pro kvantifikátory.
Dvě jsou typu "všichni" a dvě typu "svědek".

Pro spočetný jazyk *L* bez rovnosti označíme $L_C$ rozšíření jazyka *L* o spočetně mnoho nových
pomocných konstantích symbolů $C = \{ c_i \mid i \in \mathbb{N} \}$.

Konečné tablo z teorie *T* je uspořádaný, položkami označkovaný strom
zkonstruovaný v konečně mnoha krocích dle následující pravidel:

- jednoprvkový strom označkovaný libovolnou položkou je tablo z teorie *T*
- pro libovolnou položku *P* na libovolné větvi *V*
můžeme na konec větve *V* připojit atomické tablo pro položku *P*
    - je-li *P* typu svědek, můžeme použít $c_i \in C$, který se na větvy *V* ještě nevyskytuje
    - je-li *P* typu všichni, můžeme použít libovolný konstantní term $t_i$
- na konec libovolné větve můžeme připojit položku T$\alpha$ pro libovolný axiom $\alpha \in T$

Tablo je buď konečné nebo nekonečné, ale vzniklo ve spočetně mnoha krocích.

Tablo pro položku *P* je tablo s položkou *P* v kořeni.

### Tablo důkaz v predikátové logice

Tablo důkaz sentence $\varphi$ z *T* je sporné tablo z teorie *T* s položkou F$\varphi$ v kořeni.
Pokud existuje, je $\varphi$ (tablo) dokazatelný z *T* ($T \vdash \varphi$).

Tablo zamítnutí sentence $\varphi$ z *T* je sporné tablo z teorie *T* s položkou T$\varphi$ v kořeni.
Pokud existuje, je $\varphi$ (tablo) zamítnutelný z *T* ($T \vdash \neg\varphi$).

Tablo je sporné, pokud je každá jeho větev sporná.

Větev je sporná, pokud obsahuje položky T$\psi$ a F$\psi$ pro nějaký výrok $\psi$.
Jinak je bezesporná.

Tablo je dokončené, pokud je každá jeho větev dokončená.

Větev je dokončená, pokud:

- je buď sporná
- nebo je každá její položka redukovaná a zároveň obsahuje položku T$\alpha$ pro každý axiom $\alpha \in T$

Položka je redukovaná, pokud:

- buď není typu všichni a při konstrukci tabla již došlo k jejímu rozvoji na *V*,
tedy vyskytuje se na *V* jako kořen atomického tabla
- nebo je typu všichni a všechny její výskyty na *V* jsou na větvi *V* redukované

Výskyt položky typu všichni na větvi *V* je *i*-tý, pokud má na *V* právě $i - 1$ předků
označených touto položkou, a *i*-tý výskyt redukovaný na *V*, pokud:

- položka *P* má ($i + 1$)-ní výskyt na *V*
- na *V* se vyskytuje položka T$\varphi(x/t_i)$, je-li $P =$ T$(\forall x)\varphi(x)$; resp.
F$\varphi(x/t_i)$, je-li $P =$ F$(\exists x)\varphi(x)$, kde $t_i$ je *i*-tý konstantní $L_C$-term

Pro jazyk s rovností rozšíříme teorii o generální uzávěry axiomů rovnosti.

\pagebreak
## (P7) Kanonický model

### Kanonický model ve výrokové logice

Je-li *V* bezesporná větev dokončeného tabla,
pak kanonický model pro *V* je definovaný předpisem (pro $p \in \mathbb{P}$):

- $v(p) = 1$ pokud se na *V* vyskytuje položka T*p*
- $v(p) = 0$ jinak

### Kanonický model v predikátové logice

Mějme teorii *T* v jazyce $L = \langle \mathcal{F}, \mathcal{R} \rangle$ a nechť *V* je bezesporná větev
nějakého dokončeného tabla z teorie *T*. Potom kanonický model pro *V* je $L_C$-struktura
$\mathcal{A} = \langle A, \mathcal{R}^{\mathcal{A}}, \mathcal{F}^{\mathcal{A}} \cup C^{\mathcal{A}} \rangle$.

Pro jazyk *L* bez rovnosti je definován:

- doména *A* je množina všech konstantních $L_C$-termů
- pro každý *n*-ární relační symbol $R \in \mathcal{R}$ a "$s_1$", ..., "$s_n$" z *A*: ("$s_1$", ..., "$s_n$") $\in R^{\mathcal{A}} \Leftrightarrow$ na větvi *V* je položka T$R(s_1, ..., s_n)$
- pro každý *n*-ární relační symbol $f \in \mathcal{F}$ a "$s_1$", ..., "$s_n$" z *A*: $f^{\mathcal{A}}("$s_1$", ..., "$s_n$") $=$ "$f(s_1, ..., s_n)$" (speciálně pro konstantní symbol *c* máme $c^{\mathcal{A}} =$ "$c$")

Pro jazyk *L* s rovností je definován jako faktorstruktura $\mathcal{A} = \mathcal{B}/_{=^B}$.

\pagebreak

## (P8) Kongruence struktury, faktorstruktura, axiomy rovnosti

### Kongruence struktury

Mějme ekvivalenci $\sim$ na množině *A*, funkci $f: A^n \rightarrow A$
a relaci $R \subseteq A^n$. Říkáme, že $~$ je:

- kongurencí pro funkci *f*, jestliže pro všechna $x_i, y_i \in A$ t.ž. $x_i \sim y_i$, kde $1 \leq i \leq n$ platí
$f(x_1, ..., x_n) \sim f(y_1, ..., y_n)$
- kongurencí pro relaci *R*, jestliže pro všechna $x_i, y_i \in A$ t.ž. $x_i \sim y_i$, kde $1 \leq i \leq n$ platí
$R(x_1, ..., x_n) \Leftrightarrow R(y_1, ..., y_n)$

Kongruence struktury $\mathcal{A}$ je ekvivalence $\sim$ na množině *A*,
která je kongurencí pro všechny funkce a relace $\mathcal{A}$.

### Faktorstruktura

Mějme strukturu $\mathcal{A}$ a její kongruenci $\sim$. Faktorstruktura (podílová struktura)
$\mathcal{A}$ podle $\sim$ je struktura $\mathcal{A}/_{\sim}$ v témž jazyce, jejíž univerzum $A/_{\sim}$
je množina všech rozkladových tříd *A* podle $\sim$ a jejíž funkce a relace jsou definované pomocí reprezentantů:

- $f^{\mathcal{A}/_{\sim}}(\left[ x_1 \right]_{\sim}, ..., \left[ x_n \right]_{\sim}) = \left[ f^{\mathcal{A}/_{\sim}}(x_1, ..., x_n) \right]_{\sim}$
pro každý *n*-ární funkční symbol
- $R^{\mathcal{A}/_{\sim}}(\left[ x_1 \right]_{\sim}, ..., \left[ x_n \right]_{\sim}) \Leftrightarrow R^{\mathcal{A}/_{\sim}}(x_1, ..., x_n)$

### Axiomy rovnosti

Axiomy rovnosti pro jazyk *L* s rovností jsou:

- $x = x$
- $x_1 = x_1 \land ... \land x_n = y_n \rightarrow f(x_1, ..., x_n) = f(y_1, ..., y_n)$
pro každý *n*-ární funkční symbol *f* jazyka *L*
- $x_1 = x_1 \land ... \land x_n = y_n \rightarrow (R(x_1, ..., x_n) \rightarrow R(y_1, ..., y_n))$
pro každý *n*-ární relační symbol *R* jazyka *L* včetně rovnosti

\pagebreak

## (P9) CNF a DNF, Hornův tvar, množinová reprezentace CNF formule, splňující ohodnocení

### CNF

Formule je v konjuktivně normální formě (CNF), jedná-li se o konjunkci klauzulí.
Klauzule jsou literály v disjunkci. Literál je prvovýrok či jeho negace.
Prázdný výrok v CNF je $\top$.

### DNF

Formule je v disjunktivně normální formě (CNF), jedná-li se o disjunkcí elementárních konjukcí.
Elementární konjunkce je konjunkce literálů.
Prázdný výrok v DNF je $\bot$.

### Hornův tvar

Výrok je v Hornově tvaru, pokud je konjunkcí hornovských klauzulí.
Hornovská klauzule je klauzule obsahující nejvýše jeden pozitivní literál.

### Množinová reprezentace CNF formule

Klauzule jsou reprezentovány jako množiny literálů.
Formule v CNF je pak reprezentována množinou těchto množin.

### Ohodnocení

V množinové reprezentaci se jedná o množinu literálů,
kde pro každou proměnnou máme právě jeden literál.
Je konzistentní, tedy neobsahuje dva opačné literály.

Ohodnocení je částečné pokud pro některé proměnné literály chybí.
Jinak je úplné.

Ohodnocení je splňující, pokud obsahuje literál z každé klauzule.
Tedy $\forall C \in S: \upsilon \cap C \neq \emptyset \implies \upsilon \models S$.

\pagebreak

## (P10) Rezoluční pravidlo, unifikace, nejobecnější unifikace

### Rezoluční pravidlo

Mějme klauzule $C_1$ a $C_2$ a literál $\ell$ t.ž. $\ell \in C_1$ a $\overline{\ell} \in C_2$.
Potom rezolventa klauzulí $C_1$ a $C_2$ přes literál $\ell$ je klauzule

$$C = (C_1 \setminus \{ \ell \} \cup C_2 \setminus \{ \overline{\ell} \})$$

### Unifikace

Mějme konečnou množinu výrazů $S = \{ E_1, ..., E_n \}$. Substituce $\sigma$ je unifikace pro *S*,
pokud $E_1\sigma = E_2\sigma = ... = E_n\sigma$, tedy $S\sigma$ obsahuje jediný výraz.
Pokud existuje, *S* je unifikovatelná.

#### Substituce

Substituce je konečná množina $\sigma = \{ x_1/t_1, ..., x_n/t_n \}$, kde $x_i$ jsou navzájem různé proměnné
a $t_i$ jsou termy různé od $x_i$.

Substituce je

- základní, jsou-li všechny termy $t_i$ konstantní
- přejmenování proměnných, jsou-li všehcny termy $t_i$ navzájem různé proměnné

Instance výrazu E při substituci $\sigma = \{ x_1/t_1, ..., x_n/t_n \}$ je výraz $E\sigma$ vzniklý z *E*
simultánním nahrazením všech výskytů proměnných $x_i$ termy $t_i$.
Pro množinu výrazů *S* značíme $S\sigma = \{ E\sigma \mid E \in S \}$.

#### Skládání substitucí

Mějme substituce $\sigma = \{ x_1/t_1, ..., x_n/t_n \}$ a $\tau = \{ y_1/t_1, ..., y_m/t_m \}$.
Složení substitucí $\sigma$ a $\tau$ je substituce

$$\sigma\tau = \{ x_i/t_i\tau \mid x_i \in X, x_i \neq t_i\tau \} \cup \{ y_j/s_j \mid y_j \in Y \setminus X \}$$

kde $X = \{ x_1, ..., x_n \}$ a $Y = \{ y_1, ..., y_m \}$.

### Nejobecnější unifikace

Unifikace $\sigma$ pro *S* je nejobecnější,
pokud pro každou unifikaci $\tau$ pro *S* existuje substituce $\lambda$ taková,
že $\tau = \sigma\lambda$.

\pagebreak

## (P11) Rezoluční důkaz a zamítnutí, rezoluční strom

### Rezoluční důkaz a zamítnutí

Rezoluční důkaz (odvození) klauzule *C* z formule *S* je konečná posloupnost klauzulí
$C_0, C_1, ..., C_n = C$ taková, že pro každé *i*

- buď $C_i \in S$
- nebo je $C_i$ rezolventou nějakých $C_j$, $C_k$ kde $j < i$ a $k < i$

Pokud rezoluční důkaz existuje, tak $S \vdash_R C$.

Jestliže jsme z *S* rezolucí dokázali $\square$, formuli *S* jsme tím zamítli.

### Rezoluční důkaz a zamítnutí v predikátové logice

Rezoluční důkaz (odvození) klauzule *C* z formule *S* je konečná posloupnost klauzulí
$C_0, C_1, ..., C_n = C$ taková, že pro každé *i*

- buď $C_i = C_i'\sigma$ pro nějakou klauzuli $C_i' \in S$ a přejmenování proměnných $\sigma$
- nebo je $C_i$ rezolventou nějakých $C_j$, $C_k$ kde $j < i$ a $k < i$

Pokud rezoluční důkaz existuje, tak $S \vdash_R C$.

Jestliže jsme z *S* rezolucí dokázali $\square$, formuli *S* jsme tím zamítli.

### Rezoluční strom

Rezoluční strom klauzule *C* z *S* je konečný binární strom s vrcholy označenými klauzulemi, kde

- v kořeni je *C*
- v listech jsou klauzule z *S*
- v každém vnitřním vrcholu je rezolventa klauzulí ze synů tohoto vrcholu

\pagebreak

## (P12) Vysvětlete rozdíl mezi rezolučním důkazem, lineárním důkazem, a LI-důkazem.

\pagebreak

## (P13) Signatura a jazyk predikátové logiky, struktura daného jazyka.

### Signatura

Signatura je dvojice $\langle \mathcal{R}, \mathcal{F} \rangle$, kde $\mathcal{R}$ a $\mathcal{F}$
jsou disjunktní množiny relačních, resp. funkčních (ty zahrnují i konstantní) symbolů spolu s danými aritami.

Arita je funkce $ar: \mathcal{R} \cup \mathcal{F} \rightarrow \mathbb{N}$.

### Struktura

Struktura v signatuře $\langle \mathcal{R}, \mathcal{F} \rangle$ je trojice
$\mathcal{A} = \langle A, \mathcal{R}^{\mathcal{A}}, \mathcal{F}^{\mathcal{A}} \rangle$, kde

- *A* je neprázdná množina zvaná doména, či univerzum
- $\mathcal{R}^{\mathcal{A}} = \{ R^{\mathcal{A}} \mid R \in \mathcal{R} \}$
kde $\mathcal{R}^{\mathcal{A}} \subseteq A^{ar(R)}$ je interpretace relačního symbolu *R*
- $\mathcal{F}^{\mathcal{A}} = \{ f^{\mathcal{A}} \mid f \in \mathcal{F} \}$
kde $\mathcal{F}^{\mathcal{A}}: A^{ar(f)} \rightarrow A$ je interpretace funkčního symbolu *f*;
speciálně pro konstantní symbol $c \in \mathcal{F}$ máme $c^{\mathcal{A}} \in A$

### Jazyk predikátové logiky

Jazyk obsahuje

- spočetně mnoho proměnných $Var = \{ x_0, x_1, x_2, ... \}$
- relační a funkční (včetně konstantních) symboly ze signatury a symbol '=', pokud jde o jazyk s rovností
- univerzální $(\forall x)$ a existenční $(\exists x)$ kvantifikátory pro každou proměnnou
- symboly pro logické spojky a závorky: $\neg, \land, \lor, \rightarrow, \leftrightarrow, (, )$

\pagebreak

## (P14) Atomická formule, formule, sentence, otevřené formule.

### Atomická formule

### Formule

### Sentence

### Otevřená formule

\pagebreak

## (P15) Instance formule, substituovatelnost, varianta formule

### Instance formule a substituovatelnost

Term *t* je substituovatelný do $\varphi$ za *x*,
pokud po simultánním nahrazení všech volných výskytů nevznikne ve $\varphi$ žádný vázaný výskyt proměnné z *t*.
$\varphi' = \varphi(x/t)$ je instance formule $\varphi$.

### Varianta formule

Má-li $\varphi$ podformuli $(Qx)\psi$ a 

- *y* je substituovatelná za *x* do $\psi$
- *y* nemá volný výskyt v $\psi$

Pak $\varphi'$ s $(Qy)\psi'$ vzniklou z $(Qy)\psi(x/y)$ je variantou $\varphi$. Variantou $\varphi$ je i $\varphi''$, která vznikne postupnou variací všech takových podformulí $(Qy)\psi$.

\pagebreak

## (P16) Pravdivostní hodnota formule ve struktuře při ohodnocení, platnost formule ve struktuře.

\pagebreak

## (P17) Kompletní teorie v predikátové logice, elementární ekvivalence

Teorie je kompletní, je-li bezesporná a každá sentence je v ní buď pravdivá, nebo lživá.

Struktury $\mathcal{A}$ a $\mathcal{B}$ jsou elementárně ekvivalentní,
pokud v nich platí tytéž sentence. Značíme $\mathcal{A} \equiv \mathcal{B}$.

Teorije je kompletní $\Leftrightarrow$ má právě jeden model až elementární ekvivalenci.

\pagebreak

## (P18) Podstruktura, generovaná podstruktura, expanze a redukt struktury

### Podstruktura

### Generovaná podstruktura

### Expanze a redukt struktury

\pagebreak

## (P19) Definovatelnost ve struktuře

\pagebreak

## (P20) Extenze o definice

Extenze o definice je speciálním případem konzervativní extenze teorie v predikátové logice.
Definuje nové relační a funkční symboly.

$T'$ je extenzí *T* o definice pokud vznikla postupnou extenzí o relační a funkční (konstantní) symboly.

Každý model teorie *T* lze jednoznačně expandovat na model teorie $T'$.

Pro každou $L'$-formuli $\varphi'$ existuje *L*-formule $\varphi$ taková,
že $T' \models \varphi' \leftrightarrow \varphi$.

### Definice relačního symbolu

Mějme teorii *T* a formuli $\psi(x_1, ..., x_n)$ v jazyce *L*.
Označme jako $L'$ rozšíření jazyka *L* o nový *n*-ární relační symbol *R*.
Extenze teorie *T* o definici *R* formulí $\psi$ je $L'$-teorie:

$$T' = T \cup \{ R(x_1, ..., x_n) \leftrightarrow \psi(x_1, ..., x_n) \}$$

### Definice funkčního symbolu

Mějme teorii *T* a formuli $\psi(x_1, ..., x_n)$ v jazyce *L*.
Označme jako $L'$ rozšíření jazyka *L* o nový *n*-ární funkční symbol *f*.
Nechť v T platí:

- axiom existence $(\exists y)\psi(x_1, ..., x_n, y)$
- axiom jednoznačnosti $\psi(x_1, ..., x_n, y) \land \psi(x_1, ..., x_n, z) \rightarrow y = z$

Potom extenze teorie *T* o definici *f* formulí $\psi$ je $L'$-teorie:

$$T' = T \cup \{ f(x_1, ..., x_n) = y \leftrightarrow \psi(x_1, ..., x_n, y) \}$$

Speciálně pro konstantní symbol je $n = 0$.

\pagebreak

## (P21) Prenexní normální forma, Skolemova varianta

\pagebreak

## (P22) Izomorfismus struktur, izomorfní spektrum, $\omega$-kategorická teorie

\pagebreak

### (P23) Axiomatizovatelnost, konečná axiomatizovatelnost, otevřená axiomatizovatelnost

\pagebreak

### (P24) Rekurzivní axiomatizace, rekurzivní axiomatizovatelnost, rekurzivně spočetná kompletace.

\pagebreak

## (P25) Rozhodnutelná a částečně rozhodnutelná teorie

Teorie je rozhodnutelná, pokud existuje algoritmus,
který pro každou vstupní formuli $\varphi$ doběhne a odpoví, zda $T \models \varphi$.

Teorie je částečně rozhodnutelná,
pokud existuje algoritmus,
který pro každou vstupní formuli $\varphi$

- pokud $T \models \varphi$, doběhne a odpoví "ano"
- pokud $T \not\models \varphi$, buď nedoběhne,
nebo doběhne a odpoví "ne"

\pagebreak

# Lehké otázky

## (L1) Množinu modelů nad konečným jazykem lze axiomatizovat výrokem v CNF, výrokem v DNF

Nad konečným jazykem máme konečně mnoho modelů a konečně mnoho nemodelů v jazyce.

Do DNF převedeme výrok tak, že za elementární konjunkce položíme modely.
Elementární konjukce je tedy 1 pro daný model, tedy celý výrok v DNF je 1.
Pokud dostaneme ohodnocení, které není model, pak je výrok 0, neboť není splněna žádná elementární konjunkce.

Do CNF převedeme výrok tak, že za klauzule položíme nemodely s inverzními výrokovými proměnnými.
Pokud tedy dosadíme do CNF výroku nemodel, jedna z klauzulí nemůže být splněná, výrok je tedy 0.
Pokud dosadíme model, musí v každé klauzuli být alespoň jeden literálů 1, jinak by se jednalo o nemodel.
Výrok je v takovém případě 1.

\pagebreak

## (L2) 2-SAT, Algoritmus implikačního grafu, jeho korektnost

### 2-SAT

Problém splnitelnosti, neboli SAT, je výpočetní problém,
kde je pro daný výrok v CNF úkolem rozhodnout, zda je splnitelný.

Problém 2-SAT je speciálním případem, kde klauzule mají nejvýše 2 literály.

## Algoritmus implikačního grafu

Implikační graf se zakládá na myšlence, že 2-klauzuli $\ell_1 \lor \ell_2$ lze zapsat jako:
$\overline{\ell_1} \rightarrow \ell_2$ a $\overline{\ell_2} \rightarrow \ell_1$.
Jednotkovou klauzuli $\ell$ pak lze vyjádřit jako $\overline{\ell} \rightarrow \ell$.

Implikační graf $\mathcal{G}_{\varphi}$ je definován takto:

- $V(\mathcal{G}_{\varphi}) = \{ p, \neg p \mid p \in Var(\varphi) \}$
- $E(\mathcal{G}_{\varphi}) = \{ (\overline{\ell_1}, \ell_2), (\overline{\ell_2}, \ell_1) \mid \ell_1 \lor \ell_2$
je 2-klauzule $\varphi \} \cup \{ (\overline{\ell}, \ell) \mid \ell$ je jednotková klauzule $\varphi \}$

1) nalezneme komponenty silné souvislosti
    - pokud nějaká komponenta obsahuje opačné literály, výrok je nesplnitelný
2) graf těchto komponent topologicky uspořádáme
3) ohodnotíme komponenty
    i) vezmeme nejlevější neohodnocenou komponentu a ohodnotíme jí nulou
    ii) opačnou komponentu ohodnotíme jedničkou
    iii) opakujeme dokud máme neohodnocené komponenty

Po kroku (1) už lze rozhodnout splnitelnost výroku. Další kroky hledají případné ohodnocení.

## Korektnost algoritmu implikačního grafu

Každé ohodnocení musí ohodnotit všechny literály z jedné komponenty stejnou hodnotou.
V jedné komponentě tedy nemohou výt opačné literály.

Získané ohodnocení je platné, neboť pro jednotkovou klauzuli literál $\overline{\ell}$ přechází $\ell$.
Při konstrukci jsme pak ohodnotili $\overline{\ell} = 0$ a $\ell = 1$.
Stejně tak pro 2-klauzuli.

\pagebreak

## (L3) Horn-SAT, Algoritmus jednotkové propagace, jeho korektnost

\pagebreak

## (L4) Algoritmus DPLL pro řešení SAT

\pagebreak

## (L5) Věta o konstantách

\pagebreak

## (L9) Věta o kompaktnosti a její aplikace

### Znění

Teorie má model $\Leftrightarrow$ každá její konečná část má model.

### Důkaz

#### Implikace doprava

Každý model teorie je zjevně modelem každé její části.

#### Implikace doleva

Dokážeme nepřímo: předpokládáme, že *T* nemá model,
tedy je sporná a chceceme ukázat,
že její konečná část $T' \subseteq T$ je také sporná.

Protože je *T* sporná, platí $T \vdash \bot$.
Existuje tedy konečný tablo důkaz $\bot$ z *T*.
Konstrukce tohoto důkazu má jen konečně mnoho kroků,
použili jsme tedy jen konečně monho axiomů z *T*.
Definujeme $T' = \{ \alpha \in T$, T$\alpha$ je položka v tablu$\}$,
pak tablo je důkazem sporu z teorie *T*.
$T'$ je sporná konečná část *T*.

### Aplikace

Spočetně nekonečná graf je bipartitní $\Leftrightarrow$
každý jeho konečná podgraf je bipartitiní.

\pagebreak

# Těžké otázky

## (T3) Věta o úplnosti tablo metody ve výrokové logice

### Znění

Je-li výrok $\varphi$ pravdiví v teorii *T*,
potom je tablo dokazatelná z *T*.

### Důkaz

Ukážeme, že libovolné dokončené tablo z *T* s položkou F$\varphi$ v kořeni je nutně sporné.
Důkaz povedeme sporem.

Kdyby takové tablo nebylo sporné,
existovala by v něm bezesporná dokončená větev *V*.
Protože je *V* dokončená,
obsahuje T$\alpha$ pro všechny axiomy $\alpha$ z *T*.
Kanonický model $\upsilon$ větve *V* se shoduje
se všemi položkami na větvi *V* (lemma).
Protože se ale $\upsilon$ zároveň shoduje
i s položkou F$\varphi$ v kořeni,
tak $\upsilon \not\models \varphi$.
To znamená, že $T \not\models \varphi$, tedy spor.
Tablo tedy muselo být sporné,
být tablo důkazem $\varphi$ z *T*.

\pagebreak

## (T6) Věta o úplnosti rezoluce ve výrokové logice

### Znění

Je-li formule *S* nesplnitelná, je rezolucí zamítnutelná.

### Důkaz

Je-li *S* nekonečná, má konečnou nesplnitelnou část $S'$.
Rezoluční zamítnutí $S'$ je také rezolučním zamítnutím *S*.
Předpokládejme tedy BÚNO, že *S* je konečná.
Důkaz povedeme indukcí podle počtu proměnných.

Pro $|Var(S) = 0|$ je jediná možná formule
bez proměnných $S = \{ \square \}$.
Tedy $S \vdash_R \square$.

V indukčním kroku vybereme $p \in Var(S)$.
Jelikož je S nesplnitelná jsou i $S^p$ a $S^{\overline{p}}$ nesplnitelné.
Mají o jednu proměnnou méně, tedy podle indukčního předpokladu
existují rezoluční stromy *T* pro $S^p \vdash_R \square$
a $T'$ pro $S^{\overline{p}} \vdash_R \square$.

Ukážeme, jak ze stromu *T* vyrobit rezoluční strom $\hat{T}$ pro $S \vdash_R \neg p$.
Analogicky vyrobíme $\hat{T'}$ pro $S \vdash_R p$.
Nyní ke kořeni $\square$ připojíme kořeny stromů $\hat{T}$ a $\hat{T'}$.
Tím jsme vyrobili strom pro $S \vdash_R \square$,
tedy získáme prázdnou klauzuli v posledním kroku rezolučního důkazu z klauzulí $\{ \neg p \}$ a $\{ p \}$.

Strom $\hat{T}$ zkonstrujeme následujícím způsobem.
Množina vrcholů i uspořádání jsou stejné,
změníme jen některé klauzule ve vrcholech, a to přidáním literálu $\neg p$.
Na každém listu stromu *T* je nějaká klauzule $C \in S^p$.
Buď $C \in S$, či nikoli, ale $C \cup \{ \neg p \} \in S$.
V prvním případě ponecháme label.
Ve druhém případě přidáme do $C$ a do všech klauzulí nad tímto listem literál $\neg p$.
V listech jsou nyní jen klauzule z *S*, v kořeni jsme $\square$ změnili na $\neg p$.
Každý vnitřní vrchol je nadále rezolventou svých synů.
