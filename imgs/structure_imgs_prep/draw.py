from ase.io import read, write

structure = 'bulkCu2Osnap89'
atoms = read(structure+'.vasp')
atoms.rotate(-45, 'x')
atoms.rotate(-45, 'y')
atoms.rotate(-45, 'z')
write(structure+'.pov', atoms,
      povray_settings={'canvas_width': 800})
